class SortMethods
  # Bubble Sort:
  # 
  # percorre o arquivo sequencialmente várias vezes. 
  # Cada passagem consiste em comparar cada elemento no 
  # arquivo e seu sucessor (x[i] com x[i+1]) e trocar os 
  # dois elementos se não estiverem na ordem certa
  def bubble_sort_init(array)
    puts "iniciado bubble sort"
    @sortmethod = Bubblesort.new
    @sortmethod.init(array)
    statistics_sort(Flag_Sort::BUBBLE)
  end
end
