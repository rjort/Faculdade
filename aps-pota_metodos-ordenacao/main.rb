require_relative './controllers/application_controller.rb'



# po man, saudades de otacilio, me peguei esses dias chorando no canto do meu quarto no escuro, estava aos prantos

def sort_methods_get(vetor, contexto, obj_ordenacao)
  obj_ordenacao.context_save(contexto)
  obj_ordenacao.bubble_sort_init(vetor)
  obj_ordenacao.bucket_sort_init(vetor)
  obj_ordenacao.count_sort_init(vetor)
  obj_ordenacao.heap_sort_init(vetor)
  obj_ordenacao.insertion_sort_init(vetor)
  obj_ordenacao.merge_sort_init(vetor)
  obj_ordenacao.quick_sort_init(vetor)
  obj_ordenacao.radix_sort_init(vetor)
  obj_ordenacao.selection_sort_init(vetor)
end

obj_ordenacao = SortMethods.new

(1..6).each do |contexto|
  if contexto == 1
    puts "contexto: #{contexto}"
    (1..50).each do |i|
      puts "Loop #{i}"
      vetor = Array.new(5) { |nums| nums = rand(10000) }
      sort_methods_get(vetor, contexto, obj_ordenacao)
    end
  end
  if contexto == 2
    puts "contexto: #{contexto}"
    (1..50).each do |i|
      puts "Loop #{i}"
      vetor = Array.new(10) { |nums| nums = rand(10000) }
      sort_methods_get(vetor, contexto, obj_ordenacao)
    end
  end
  if contexto == 3
    puts "contexto: #{contexto}"
    (1..50).each do |i|
      puts "Loop #{i}"
      vetor = Array.new(50) { |nums| nums = rand(10000) }
      sort_methods_get(vetor, contexto, obj_ordenacao)
    end
  end
  if contexto == 4
    puts "contexto: #{contexto}"
    (1..50).each do |i|
      puts "Loop #{i}"
      vetor = Array.new(100) { |nums| nums = rand(10000) }
      sort_methods_get(vetor, contexto, obj_ordenacao)
    end
  end
  if contexto == 5
    puts "contexto: #{contexto}"
    (1..50).each do |i|
      puts "Loop #{i}"
      vetor = Array.new(1000) { |nums| nums = rand(10000) }
      sort_methods_get(vetor, contexto, obj_ordenacao)
    end
  end
  if contexto == 6
    puts "contexto: #{contexto}"
    (1..50).each do |i|
      puts "Loop #{i}"
      vetor = Array.new(10000) { |nums| nums = rand(10000) }
      sort_methods_get(vetor, contexto, obj_ordenacao)
    end
  end
end

puts ""
obj_ordenacao.print_statistics
