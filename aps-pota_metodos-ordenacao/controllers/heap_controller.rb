class SortMethods
  # Heap Sort:
  # Utilizacao de uma fila de prioridades implementada
  # com heap.
  #
  # Estrutura de dados composta por chaves, que suporta
  # duas operacoes basicas: insercao de um novo item e
  # remocao do item com a maior chave, a chave de cada
  # item reflete a prioridade em que se deve tratar aquele
  # item.
  def heap_sort_init(array)
    puts "iniciado heap sort"
    @sortmethod = Heapsort.new
    @sortmethod.init(array)
    statistics_sort(Flag_Sort::HEAP)
  end
<<<<<<< HEAD:aps-pota_metodos-ordenacao/lib/controller/heap_controller.rb

  # Mostra o ARRAY ordenado pelo metodo
  def heap_print_sort
    @heap.print_sort
  end

  # Metodo mostra a contagem de comparacoes da funcao
  # de ordenacao.
  def heap_print_count
    @heap.print_count
  end
=======
>>>>>>> develop:aps-pota_metodos-ordenacao/controllers/heap_controller.rb
end
