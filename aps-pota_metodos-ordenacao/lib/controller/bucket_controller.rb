class SortModules_Controller
  # Bucket Sort (Ordenacao em Tempo Linear):
  # Assume que a entrada consiste em elementos
  # distribuidos de forma uniforme sobre o intervalo
  # [0,1];
  # A ideia do Bucket Sort e dividir o intervalo [0,1]
  # em 'n' subintervalos de mesmo tamanho (baldes), e
  # entao distribuir os 'n' numeros de baldes
  def bucket_sort_init(array)
    puts "iniciado bucket sort"
    @bucket.init(array)
  end

  # Mostra o ARRAY ordenado pelo metodo
  def bucket_print_sort
    @bucket.print_sort
  end

  # Metodo mostra a contagem de comparacoes da funcao
  # de ordenacao.
  def bucket_print_count
    @bucket.print_count
  end
end
