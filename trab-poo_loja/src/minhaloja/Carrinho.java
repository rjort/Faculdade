package minhaloja;

import java.util.ArrayList;

public class Carrinho {

	private ArrayList<Item> comprasCliente = new ArrayList<>();
	private Pessoa cliente = new Pessoa();
	private double valorCompraTotal = 0;
	
	public void mostraCarrinhoComDados() {
		
		System.out.println("Cliente : "+cliente.getNome()
						  +"\nCpf : "+cliente.getCpf());
		System.out.println("Produtos :");
		for(int i = 0; i < comprasCliente.size(); i++) {
			comprasCliente.get(i).imprimirItem();
		}
		System.out.println("Valor Final : "+valorCompraTotal);
	}
	
	public void mostarCarrinho() {
		System.out.println("\n*Carrinho*");
		for(int i = 0; i < comprasCliente.size(); i++) {
			comprasCliente.get(i).imprimirItem();
		}
		System.out.println("Valor Final : "+valorCompraTotal);
	}
	
	public void adicionarCarrinho(Item pItem) {
		comprasCliente.add(pItem);
		calcularValorCompra(pItem);
	}
	
	public void calcularValorCompra(Item pItem) {
		valorCompraTotal += pItem.getValorCompra();
	}
	
	public void setCliente(Pessoa cliente) {
		this.cliente = cliente;
	}
}
