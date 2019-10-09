Dir['./controllers/*.rb'].each { |file| require file }
Dir['./lib/*.rb'].each { |file| require file }

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
class SortMethods
  include Flag_Sort
  @@buffer_statistics_count = [[],[],[],[],[],[]]
  @@buffer_context

  # Contrutor com variaveis de instancia possuem
  # as funcoes de cada um dos tipos de ordenacao
  def initialize
    @sortmethod
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

  def print_count
    count = count_comparations()
    puts "Comparacoes: #{count}"
  end

  def print_array_sorted
    a_sorted = array_sort()
    puts "Vetor Ordenado: #{a_sorted}"
  end
  
  # salva o contexto no "buffer"
  def context_save(context)
    @@buffer_context = context
  end
  
  private

  # contem o array arrumado
  # OBS: usar para manipulacao em outra variavel
  def array_sort
    @sortmethod.return_array_sorted
  end

  # contem o contador de comparacoes de um metodo de ordenacao
  # OBS: usar para manipulacao em outra variavel
  def count_comparations
    @sortmethod.return_count
  end
  
  def statistics_sort(sort_method_flag)
    @@buffer_statistics_count[@@buffer_context - 1][sort_method_flag] = count_comparations()
  end
end
