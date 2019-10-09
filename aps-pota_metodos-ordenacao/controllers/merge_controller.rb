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
<<<<<<< HEAD:aps-pota_metodos-ordenacao/lib/controller/merge_controller.rb
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
=======
    @sortmethod = Mergesort.new
    @sortmethod.init(array)
    statistics_sort(Flag_Sort::MERGE)
>>>>>>> develop:aps-pota_metodos-ordenacao/controllers/merge_controller.rb
  end
end
