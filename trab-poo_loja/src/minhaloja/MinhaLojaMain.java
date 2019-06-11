package minhaloja;

import java.util.Scanner;

public class MinhaLojaMain {

	public static void main(String[] args) {
		
		Scanner input = new Scanner(System.in);
		Scanner input2 = new Scanner(System.in);
		boolean controle = true;
		boolean controleCompra = true;
		//Pessoa auxiliarPessoa;
		Cliente auxCliente = new Cliente();
		
		while(controle) {
			System.out.println("\n*Menu*");
			System.out.println("1 - Cadastrar Cliente");
			System.out.println("2 - Cadastrar Produto");
			System.out.println("3 - Efetuar Venda");
			System.out.println("4 - Finalizar");
			System.out.printf(": ");
			switch(input.nextInt()) {

			case 1:
				
				Pessoa cadastroPessoaAux = new Pessoa();
				cadastroPessoaAux.lerPessoa();
				auxCliente.adicionarCliente(cadastroPessoaAux);
				
				break;
			case 2:
				
				Produto cadastroProdutoAux = new Produto();
				cadastroProdutoAux.lerProduto();
				cadastroProdutoAux.cadastrarProduto(cadastroProdutoAux);
				
				break;
			case 3:
				
				Pessoa identificarPessoaAux = new Pessoa();
				Carrinho carrinhoPessoa = new Carrinho();
				NotaFiscal notaFiscalAux = new NotaFiscal();
				System.out.println("\n*Vendas*\n");
				System.out.printf("Nome do Funcionario : ");
				notaFiscalAux.setFuncionario(input2.next());
				
				System.out.printf("Digite o Cpf do Cliente : ");
				identificarPessoaAux = auxCliente.encontarCliente(input.next());
				carrinhoPessoa.setCliente(identificarPessoaAux);
				notaFiscalAux.setCarrinhoCliente(carrinhoPessoa);
				
				while(controleCompra) {
					System.out.println("\n*Menu*\n1 - Adicionar Produto ao Carrinho");
					System.out.println("2 - Visualizar Carrinho");
					System.out.println("3 - Finalizar Compra e Emitir Nota Fiscal");
					System.out.printf(": ");
					switch(input.nextInt()) {
					case 1:
						Produto produtoAux = new Produto();
						Item itemAddCarinho = new Item();

						System.out.printf("Digite o Codigo do Produto :");
						produtoAux = produtoAux.encontarProduto(input2.next());
						itemAddCarinho.setItem(produtoAux);
						
						System.out.printf("Quantidade : ");
						itemAddCarinho.setQuantidadeItens(input2.nextInt());
						itemAddCarinho.setValorCompra();
						
						carrinhoPessoa.adicionarCarrinho(itemAddCarinho);
						break;
					case 2:
						carrinhoPessoa.mostarCarrinho();
						break;
					case 3:
						
						System.out.printf("Forma de Pagamento : ");
						notaFiscalAux.setFormaPagamento(input2.next());
						
						System.out.printf("Valor Pago : ");
						notaFiscalAux.setValorPago(input2.next());
						
						notaFiscalAux.imprimirNotaFiscal();
						notaFiscalAux.adicionarNotaFiscal(notaFiscalAux);
						
						controle = false;
						controleCompra = false;
						break;
					default:
						System.out.println("*Opção Invalida");
						break;
					}
				}
				
				break;
				
			case 4:
				controle = false;
				break;
			default:
				System.out.println("*Opção Invalida");
				break;
			}
		}
		
		input.close();
		input2.close();
	}

}
