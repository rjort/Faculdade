class SortModules_Controller
  # Selection Sort:
  # Algoritmo de ordenacao baseado em passar
  # sempre o menor valor para primeira posicao
  def selection_sort_init(vetor)
    puts "iniciado selection sort"
    @selection.init(vetor)
  end

  # Mostra o ARRAY ordenado pelo metodo
  def selection_print_sort
    @selection.print_sort
  end

  # Metodo mostra a contagem de comparacoes da funcao
  # de ordenacao.
  def selection_print_count
    @selection.print_count
  end
end
