package minhaloja;

import java.util.ArrayList;
import java.util.Scanner;

public class Produto {
	Scanner input = new Scanner(System.in);
	private static ArrayList<Produto> listaDeProdutos = new ArrayList<>();
	private String nome;
	private String codigo;
	private double preco;
	
	public void imprimirProduto() {
		System.out.println("Nome : "+nome
						  +"\nCodigo : "+codigo
						  +"\nPreço Unidade : "+preco);
	}
	
	public void lerProduto() {
		System.out.println("\n*Cadastro Produto*\n");
		System.out.printf("Nome do Produto : ");
		this.nome = input.next();
		System.out.printf("Codigo : ");
		this.codigo = input.next();
		System.out.print("Preço : ");
		this.preco = input.nextDouble();
	}
	
	public void cadastrarProduto(Produto pProduto) {
		
		if(!listaDeProdutos.contains(pProduto)) {
			listaDeProdutos.add(pProduto);
			System.out.println("Produto Adicionado com Sucesso!!!");
		}else {
			System.out.println("Codigo já Cadastrado!!!");
		}
	}
	
	public Produto encontarProduto(String pCodigo) {
		
		for(int i = 0; i < listaDeProdutos.size(); i++) {
			
			if(listaDeProdutos.get(i).getCodigo().equals(pCodigo)) {
				return listaDeProdutos.get(i);
			}

		}
		return null;
	}
	
	public String getNome() {
		return nome;
	}
	public double getPreco() {
		return preco;
	}
	
	public String getCodigo() {
		return codigo;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((codigo == null) ? 0 : codigo.hashCode());
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
		Produto other = (Produto) obj;
		if (codigo == null) {
			if (other.codigo != null)
				return false;
		} else if (!codigo.equals(other.codigo))
			return false;
		return true;
	}
	
	
	
}
