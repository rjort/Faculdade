class SortMethods
  # Selection Sort:
  # Algoritmo de ordenacao baseado em passar
  # sempre o menor valor para primeira posicao
  def selection_sort_init(array)
    puts "iniciado selection sort"
    @sortmethod = Selectionsort.new
    @sortmethod.init(array)
    statistics_sort(Flag_Sort::SELECTION)
  end
end