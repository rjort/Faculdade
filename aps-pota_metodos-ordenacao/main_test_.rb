# Todos os testes devem ser feitos nesse arquivo

require_relative './controllers/application_controller.rb'

obj = SortMethods.new
obj.context_save(1)
obj.bubble_sort_init([3,4,10,1,100,32,2])
obj.print_array_sorted
obj.print_count
obj.bucket_sort_init([3,4,10,1,100,32,2])
obj.print_array_sorted
obj.print_count
obj.count_sort_init([3,4,10,1,100,32,2])
obj.print_array_sorted
obj.print_count
obj.heap_sort_init([3,4,10,1,100,32,2])
obj.print_array_sorted
obj.print_count
obj.insertion_sort_init([3,4,10,1,100,32,2])
obj.print_array_sorted
obj.print_count
obj.merge_sort_init([3,4,10,1,100,32,2])
obj.print_array_sorted
obj.print_count
obj.quick_sort_init([3,4,10,1,100,32,2])
obj.print_array_sorted
obj.print_count
obj.radix_sort_init([3,4,10,1,100,32,2])
obj.print_array_sorted
obj.print_count
obj.selection_sort_init([3,4,10,1,100,32,2])
obj.print_array_sorted
obj.print_count

obj.print_statistics