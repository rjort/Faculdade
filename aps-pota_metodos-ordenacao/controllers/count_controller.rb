class SortMethods
  # Count Sort (Ordenacao por Contagem):
  # Propoe que cada elemento de entrada e um inteiro
  # na faixa de 0 a 'k'.
  # 
  # Determina para cada elemento da entrada 'x' o numero
  # de elementos maiores que 'x'. Com essa informacao,
  # determinar a posicao de cada elemento
  # > se 17 elementos forem menores que 'x' entao 'x'
  # ocupa a posicao de saida 18
  def count_sort_init(array)
    puts "iniciado count sort"
    @sortmethod = Countsort.new
    @sortmethod.init(array)
    statistics_sort(Flag_Sort::COUNT)
  end
end
