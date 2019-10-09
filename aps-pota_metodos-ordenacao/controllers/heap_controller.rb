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
end
