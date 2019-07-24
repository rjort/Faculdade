# Todos os testes devem ser feitos nesse arquivo

require_relative './lib/sortmodule_controller.rb'

# chama todos os metodos de ordenacao para evitar repeticao
def sort_methods_get(vetor, context, obj)
  obj.bubble_sort_init(vetor)
  obj.bucket_sort_init(vetor)
  obj.count_sort_init(vetor)
  obj.heap_sort_init(vetor)
  obj.insertion_sort_init(vetor)
  obj.merge_sort_init(vetor)
  obj.quick_sort_init(vetor)
  obj.radix_sort_init(vetor)
  obj.selection_sort_init(vetor)
  obj.validate_context(context)
end

def basic_test_1(vetor, obj_ordenacao)
  obj_ordenacao.bubble_sort_init(vetor)
  obj_ordenacao.bubble_print_sort
  obj_ordenacao.bubble_print_count

  obj_ordenacao.bucket_sort_init(vetor)
  obj_ordenacao.bucket_print_sort
  obj_ordenacao.bucket_print_count

  obj_ordenacao.count_sort_init(vetor)
  obj_ordenacao.count_print_sort
  obj_ordenacao.count_print_count

  obj_ordenacao.heap_sort_init(vetor)
  obj_ordenacao.heap_print_sort
  obj_ordenacao.heap_print_count

  obj_ordenacao.insertion_sort_init(vetor)
  obj_ordenacao.insertion_print_sort
  obj_ordenacao.insertion_print_count

  obj_ordenacao.merge_sort_init(vetor)
  obj_ordenacao.merge_print_sort
  obj_ordenacao.merge_print_count

  obj_ordenacao.quick_sort_init(vetor)
  obj_ordenacao.quick_print_sort
  obj_ordenacao.quick_print_count

  obj_ordenacao.radix_sort_init(vetor)
  obj_ordenacao.radix_print_sort
  obj_ordenacao.radix_print_count

  obj_ordenacao.selection_sort_init(vetor)
  obj_ordenacao.selection_print_sort
  obj_ordenacao.selection_print_count
end

obj_ordenacao = SortModules_Controller.new
# vetor = Array.new(10) { |nums| nums = rand(1000) }
# basic_test_1(vetor, obj_ordenacao)

(1..2).each do |contexto|
  if contexto == 1
    puts "contexto: #{contexto}"
    (1..3).each do |i|
      vetor = Array.new(5) { |nums| nums = rand(10000) }
      sort_methods_get(vetor, contexto, obj_ordenacao)
    end
  end
  if contexto == 2
    puts "contexto: #{contexto}"
    (1..3).each do |i|
      vetor = Array.new(10) { |nums| nums = rand(10000) }
      sort_methods_get(vetor, contexto, obj_ordenacao)
    end
  end
end

puts ""
obj_ordenacao.print_statistics
