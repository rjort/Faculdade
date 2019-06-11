package minhaloja;

import java.util.ArrayList;

public class Cliente{
	
	private static ArrayList<Pessoa> listaDeClientes = new ArrayList<>();
	
	
	public void adicionarCliente(Pessoa pPessoa) {
		
		if(!listaDeClientes.contains(pPessoa)) {
			listaDeClientes.add(pPessoa);
			System.out.println("Cliente Adicionada com Sucesso!!!");
		}else {
			System.out.println("CPF já Cadastrado!!!");
		}
	}
	
	public Pessoa encontarCliente(String pCpf) {
		
		for(int i = 0; i < listaDeClientes.size(); i++) {
			
			if(listaDeClientes.get(i).getCpf().equals(pCpf)) {
				return listaDeClientes.get(i);
			}

		}
		return null;
	}

}
