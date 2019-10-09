class SortMethods
  # Insertion Sort:
  # Dada uma estrutura (array, lista) constroi uma
  # matriz final com um elemento de cada vez, uma
  # insercao por vez.
  # 
  # Comeca a trabalhar pelo segundo valor e vai jogando
  # ele para a esquerda (inicio do array).
  # 
  # > 5 3 2 4  7 1 0 6
  # 
  # > 5 [3] 2 4 7 1 0 6
  # 
  # > (5 < 3 ?) 2 4 7 1 0 6
  # 
  # > 3<>5 2 4 7 1 0 6
  def insertion_sort_init(array)
    puts "iniciado insertion sort"
    @sortmethod = Insertionsort.new
    @sortmethod.init(array)
    statistics_sort(Flag_Sort::INSERTION)
  end
end
