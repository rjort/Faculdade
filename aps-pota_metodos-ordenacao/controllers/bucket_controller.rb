class SortMethods
  # Bucket Sort (Ordenacao em Tempo Linear):
  # Assume que a entrada consiste em elementos
  # distribuidos de forma uniforme sobre o intervalo
  # [0,1];
  # A ideia do Bucket Sort e dividir o intervalo [0,1]
  # em 'n' subintervalos de mesmo tamanho (baldes), e
  # entao distribuir os 'n' numeros de baldes
  def bucket_sort_init(array)
    puts "iniciado bucket sort"
    @sortmethod = Bucketsort.new
    @sortmethod.init(array)
    statistics_sort(Flag_Sort::BUCKET)
  end
end
