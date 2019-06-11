package minhaloja;

import java.util.ArrayList;

public class NotaFiscal {
	
	private static ArrayList<NotaFiscal> listaNotaFiscal = new ArrayList<>();
	private Carrinho carrinhoCliente = new Carrinho();
	private String funcionario;
	private String formaPagamento;
	private String valorPago;
	
	public void imprimirNotaFiscal() {
		System.out.println("\n*Nota Fiscal*");
		System.out.println("Funcionario : "+funcionario);
		carrinhoCliente.mostraCarrinhoComDados();
		System.out.println("Valor Pago : "+valorPago
						   +"\nForma de Pagamento : "+formaPagamento);
	}
	
	public void adicionarNotaFiscal(NotaFiscal pNota) {
		listaNotaFiscal.add(pNota);
	}

	public void setCarrinhoCliente(Carrinho carrinhoCliente) {
		this.carrinhoCliente = carrinhoCliente;
	}

	public void setFuncionario(String funcionario) {
		this.funcionario = funcionario;
	}

	public void setFormaPagamento(String formaPagamento) {
		this.formaPagamento = formaPagamento;
	}

	public void setValorPago(String valorPago) {
		this.valorPago = valorPago;
	}



}
