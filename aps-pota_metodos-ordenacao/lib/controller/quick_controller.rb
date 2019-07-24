class SortModules_Controller
  # Quick Sort:
  # Algoritmo de ordenacao por comparacao do tipo
  # 'dividir-para-conquistar'
  # 
  # O algoritmo consiste em dividir o array em duas particoes
  # 'esquerda' e 'direita' onde primeiro se escolhe um 'pivor'
  # aleatorio da lista e com isso o algoritmo ordena os valores
  # menores a 'esquerda' do 'pivor' e maiores a 'direita', fazendo
  # isso 'n' vezes de forma recursiva.
  def quick_sort_init(array)
    # FIXME:
    # o output nao retorna nada
    # VERIFICAR SEU MODULE
    puts "iniciado quick sort"
    @quick.init(array)
  end

  # Mostra o ARRAY ordenado pelo metodo
  def quick_print_sort
    @quick.print_sort
  end

  # Metodo mostra a contagem de comparacoes da funcao
  # de ordenacao.
  def quick_print_count
    @quick.print_count
  end
end
