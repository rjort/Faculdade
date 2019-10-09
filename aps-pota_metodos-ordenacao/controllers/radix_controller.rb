class SortMethods
  # Radix Sort:
  # Pressupoe que o array de entrada possuem um
  # limite no valor e tamanho (quantidade de digitos)
  # e ordena os valores em funcao da quantidade de
  # digitos que um valor possui, podendo ser o digito
  # mais significativo ou menos significativo
  # 
  # o Radix consiste em usar um outro algoritmo estavel
  # para ordenacao do array.
  # 
  # Seu pseudo-codigo:
  # > for i <- 1 to 'd'
  # > > utilize um algoritmo estavel para ordenar 'A'
  # pelo 'i'-nesimo digito
  # 
  # onde 'A' e o array de entrada e
  # 'd' o numero de digitos
  def radix_sort_init(array)
    puts "iniciado radix sort"
    @sortmethod = Radixsort.new
    @sortmethod.init(array)
    statistics_sort(Flag_Sort::RADIX)
  end
end