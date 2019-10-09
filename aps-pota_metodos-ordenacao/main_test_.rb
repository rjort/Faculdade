# Todos os testes devem ser feitos nesse arquivo
require 'benchmark'
require_relative './controllers/application_controller.rb'

def organize_methods(obj,vetor)
  obj.context_save(1)
  obj.bubble_sort_init(vetor)
  obj.bucket_sort_init(vetor)
  obj.count_sort_init(vetor)
  obj.heap_sort_init(vetor)
  obj.insertion_sort_init(vetor)
  obj.merge_sort_init(vetor)
  obj.quick_sort_init(vetor)
  obj.radix_sort_init(vetor)
  obj.selection_sort_init(vetor)
end

obj = SortMethods.new

Benchmark.bm do |bck|
  bck.report do
    (1..5).each do |i|
      puts "Loop #{i}"
      vetor = Array.new(10000) { |nums| nums = rand(10000) }
      organize_methods(obj,vetor)
    end
  end
end
