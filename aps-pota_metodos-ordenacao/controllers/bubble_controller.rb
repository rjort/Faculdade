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
<<<<<<< HEAD:aps-pota_metodos-ordenacao/lib/controller/bubble_controller.rb

  # Metodo ostra o ARRAY ordenado pelo metodo
  def bubble_print_sort
    @bubble.print_sort
  end

  # Metodo mostra a contagem de comparacoes da funcao
  # de ordenacao.
  def bubble_print_count
    @bubble.print_count
  end
=======
>>>>>>> develop:aps-pota_metodos-ordenacao/controllers/bubble_controller.rb
end
