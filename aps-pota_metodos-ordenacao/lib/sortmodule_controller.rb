require_relative '../paths.rb'

# Classe que serve como controladora de comunicao
# para os metodos de ordenacao vindos do modulo
# 'SortModule'
# 
# > Qualquer alteracao na funcionalidade de um metodo
# de ordenacao deve ser feito em seu devido bloco
# 
# > Alteracoes extras deve ser feita na main da classe
# 'sortmodule_controller.rb'
# 
# Blocos dessa classe encontram-se na pasta 'controller'
# 
# Cada bloco possui um 'initialize' com uma variavel de
# instancia
class SortModules_Controller
  include SortModule
  @@buffer_statistics_count = [[],[],[],[],[],[]]
  @@buffer_context
  # Contrutor com variaveis de instancia possuem
  # as funcoes de cada um dos tipos de ordenacao
  def initialize
    @bubble = SortModule::Bubblesort.new
    @bucket = SortModule::Bucketsort.new
    @count = SortModule::Countsort.new
    @heap = SortModule::Heapsort.new
    @insertion = SortModule::Insertionsort.new
    @merge = SortModule::Mergesort.new
    @quick = SortModule::Quicksort.new
    @radix = SortModule::Radixsort.new
    @selection = SortModule::Selectionsort.new
  end

  def print_statistics
    (0...@@buffer_context).each do |i|
      puts("Sessao de comparacoes #{i+1}")
      puts("Bubble:#{@@buffer_statistics_count[i][0]}")
      puts("Bucket:#{@@buffer_statistics_count[i][1]}")
      puts("Count:#{@@buffer_statistics_count[i][2]}")
      puts("Heap:#{@@buffer_statistics_count[i][3]}")
      puts("Insertion:#{@@buffer_statistics_count[i][4]}")
      puts("Merge:#{@@buffer_statistics_count[i][5]}")
      puts("Quick:#{@@buffer_statistics_count[i][6]}")
      puts("Radix:#{@@buffer_statistics_count[i][7]}")
      puts("Selection:#{@@buffer_statistics_count[i][8]}")
      puts ""
    end
  end

  # Valida o contexto que e passado como paramentro e com isso
  # inicia o armazenamento  
  def validate_context(context)
    @@buffer_context = context
    statistics_sort(context - 1) if context == 1
    statistics_sort(context - 1) if context == 2
    statistics_sort(context - 1) if context == 3
    statistics_sort(context - 1) if context == 4
    statistics_sort(context - 1) if context == 5
    statistics_sort(context - 1) if context == 6
  end
  
  private

  def statistics_sort(context)
      @@buffer_statistics_count[context][0] = @bubble.count
      @@buffer_statistics_count[context][1] = @bucket.count
      @@buffer_statistics_count[context][2] = @count.count
      @@buffer_statistics_count[context][3] = @heap.count
      @@buffer_statistics_count[context][4] = @insertion.count
      @@buffer_statistics_count[context][5] = @merge.count
      @@buffer_statistics_count[context][6] = @quick.count
      @@buffer_statistics_count[context][7] = @radix.count
      @@buffer_statistics_count[context][8] = @selection.count
  end
end