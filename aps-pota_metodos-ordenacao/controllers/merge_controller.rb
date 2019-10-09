class SortMethods
  # Merge Sort (Ordenacao por Mistura):
  # Algoritmo de ordenacao por comparacao do tipo
  # 'dividir-para-conquistar'
  # 
  # Consiste em 'dividir' o array em pedacos menores e
  # resolve-los por meio de recursividade e depois
  # 'conquistar' misturando ordenadamente 
  # todos os pedacos resolvidos. 
  def merge_sort_init(array)
    # FIXME: 09/06/2019 ::
    # chamada desse metodo retorna o array vazio
    # -> VERIFICAR NO MODULE DE MERGE_SORT.RB
    # FIXED: 10/06/2019 ::
    # vetor ordenado nao tava retornando a variavel de instancia
    # do modulo de merge.
    puts "iniciado merge sort"
    @sortmethod = Mergesort.new
    @sortmethod.init(array)
    statistics_sort(Flag_Sort::MERGE)
  end
end