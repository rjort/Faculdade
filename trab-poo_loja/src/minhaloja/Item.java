package minhaloja;


public class Item {

	private Produto item = new Produto();
	private int quantidadeItens;
	private double valorCompra;
	
	public void imprimirItem() {
		System.out.println("Nome : "+item.getNome()
						  +", Codigo : "+item.getCodigo()
						  +", Quantidade : "+quantidadeItens
						  +", Valor Unidade : "+item.getPreco()
						  +", Preço : "+valorCompra);	
	}
	
	public Produto getItem() {
		return item;
	}
	public void setItem(Produto item) {
		this.item = item;
	}
	public int getQuantidadeItens() {
		return quantidadeItens;
	}
	public void setQuantidadeItens(int quantidadeItens) {
		this.quantidadeItens = quantidadeItens;
	}
	public double getValorCompra() {
		return valorCompra;
	}
	public void setValorCompra() {
		this.valorCompra = quantidadeItens * item.getPreco();
	}
	
	
}
