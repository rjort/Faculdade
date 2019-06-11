package minhaloja;

import java.util.Scanner;

public class Pessoa {

	private String nome;
	private String endereco;
	private String telefone;
	private String cpf;
	Scanner input = new Scanner(System.in);
	
	public void lerPessoa() {
		System.out.println("\n*Cadastro Cliente*\n");
		System.out.printf("Nome : ");
		this.nome = input.next();
		System.out.printf("Endereço : ");
		this.endereco = input.next();
		
		System.out.printf("Telefone : ");
		this.telefone = input.next();
		
		System.out.printf("Cpf : ");
		this.cpf = input.next();
	}
	public String getNome() {
		return nome;
	}
	public String getCpf() {
		return cpf;
	}

	public void imprimirDados() {
		
		System.out.println("Nome : " +nome
						  +"\nCpf : " +cpf
						  +"\nTelefone : " +telefone
						  +"\nEndereço : " +endereco);
	}	
	
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((cpf == null) ? 0 : cpf.hashCode());
		return result;
	}
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Pessoa other = (Pessoa) obj;
		if (cpf == null) {
			if (other.cpf != null)
				return false;
		} else if (!cpf.equals(other.cpf))
			return false;
		return true;
	}

	public void setCpf(String cpf) {
		this.cpf = cpf;
	}

	
}
