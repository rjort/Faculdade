class SortModules_Controller
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
    @merge.init(array)
  end
  
  # Mostra o ARRAY ordenado pelo metodo
  def merge_print_sort
    @merge.print_sort
  end

  # Metodo mostra a contagem de comparacoes da funcao
  # de ordenacao.
  def merge_print_count
    @merge.print_count
  end
end