require_relative './lib/sortmodule_controller.rb'

obj_ordenacao = SortModules_Controller.new

(1..6).each do |contexto|
  if contexto == 1
    puts "contexto: #{contexto}"
    (1..50).each do |i|
      puts "Loop #{i}"
      vetor = Array.new(5) { |nums| nums = rand(10000) }
      obj_ordenacao.bubble_sort_init(vetor)
      obj_ordenacao.bucket_sort_init(vetor)
      obj_ordenacao.count_sort_init(vetor)
      obj_ordenacao.heap_sort_init(vetor)
      obj_ordenacao.insertion_sort_init(vetor)
      obj_ordenacao.merge_sort_init(vetor)
      obj_ordenacao.quick_sort_init(vetor)
      obj_ordenacao.radix_sort_init(vetor)
      obj_ordenacao.selection_sort_init(vetor)
      obj_ordenacao.validate_context(contexto)
    end
  end
  if contexto == 2
    puts "contexto: #{contexto}"
    (1..50).each do |i|
      puts "Loop #{i}"
      vetor = Array.new(10) { |nums| nums = rand(10000) }
      obj_ordenacao.bubble_sort_init(vetor)
      obj_ordenacao.bucket_sort_init(vetor)
      obj_ordenacao.count_sort_init(vetor)
      obj_ordenacao.heap_sort_init(vetor)
      obj_ordenacao.insertion_sort_init(vetor)
      obj_ordenacao.merge_sort_init(vetor)
      obj_ordenacao.quick_sort_init(vetor)
      obj_ordenacao.radix_sort_init(vetor)
      obj_ordenacao.selection_sort_init(vetor)
      obj_ordenacao.validate_context(contexto)
    end
  end
  if contexto == 3
    puts "contexto: #{contexto}"
    (1..50).each do |i|
      puts "Loop #{i}"
      vetor = Array.new(50) { |nums| nums = rand(10000) }
      obj_ordenacao.bubble_sort_init(vetor)
      obj_ordenacao.bucket_sort_init(vetor)
      obj_ordenacao.count_sort_init(vetor)
      obj_ordenacao.heap_sort_init(vetor)
      obj_ordenacao.insertion_sort_init(vetor)
      obj_ordenacao.merge_sort_init(vetor)
      obj_ordenacao.quick_sort_init(vetor)
      obj_ordenacao.radix_sort_init(vetor)
      obj_ordenacao.selection_sort_init(vetor)
      obj_ordenacao.validate_context(contexto)
    end
  end
  if contexto == 4
    puts "contexto: #{contexto}"
    (1..50).each do |i|
      puts "Loop #{i}"
      vetor = Array.new(100) { |nums| nums = rand(10000) }
      obj_ordenacao.bubble_sort_init(vetor)
      obj_ordenacao.bucket_sort_init(vetor)
      obj_ordenacao.count_sort_init(vetor)
      obj_ordenacao.heap_sort_init(vetor)
      obj_ordenacao.insertion_sort_init(vetor)
      obj_ordenacao.merge_sort_init(vetor)
      obj_ordenacao.quick_sort_init(vetor)
      obj_ordenacao.radix_sort_init(vetor)
      obj_ordenacao.selection_sort_init(vetor)
      obj_ordenacao.validate_context(contexto)
    end
  end
  if contexto == 5
    puts "contexto: #{contexto}"
    (1..50).each do |i|
      puts "Loop #{i}"
      vetor = Array.new(1000) { |nums| nums = rand(10000) }
      obj_ordenacao.bubble_sort_init(vetor)
      obj_ordenacao.bucket_sort_init(vetor)
      obj_ordenacao.count_sort_init(vetor)
      obj_ordenacao.heap_sort_init(vetor)
      obj_ordenacao.insertion_sort_init(vetor)
      obj_ordenacao.merge_sort_init(vetor)
      obj_ordenacao.quick_sort_init(vetor)
      obj_ordenacao.radix_sort_init(vetor)
      obj_ordenacao.selection_sort_init(vetor)
      obj_ordenacao.validate_context(contexto)
    end
  end
  if contexto == 6
    puts "contexto: #{contexto}"
    (1..50).each do |i|
      puts "Loop #{i}"
      vetor = Array.new(10000) { |nums| nums = rand(10000) }
      obj_ordenacao.bubble_sort_init(vetor)
      obj_ordenacao.bucket_sort_init(vetor)
      obj_ordenacao.count_sort_init(vetor)
      obj_ordenacao.heap_sort_init(vetor)
      obj_ordenacao.insertion_sort_init(vetor)
      obj_ordenacao.merge_sort_init(vetor)
      obj_ordenacao.quick_sort_init(vetor)
      obj_ordenacao.radix_sort_init(vetor)
      obj_ordenacao.selection_sort_init(vetor)
      obj_ordenacao.validate_context(contexto)
    end
  end
end

puts ""
obj_ordenacao.print_statistics