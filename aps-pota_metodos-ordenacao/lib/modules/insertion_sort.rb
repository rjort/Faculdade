module SortModule
  class Insertionsort
    attr_reader :array_ordenado, :count

    def initialize
      @array_ordenado = []
      @count = 0
    end

    def init(array)
      insertion_sort(array)
    end

    def print_sort
      puts @array_ordenado.to_s
    end

    def print_count
      puts @count.to_s
    end

    private

    def insertion_sort(array, compare = lambda { |a, b| a <=> b })
      (1..array.length - 1).each do |i|
        item = array[i]
        index_hole = i
        @count += 1
        while index_hole.positive? && compare.call(array[index_hole - 1], item).positive?
          array[index_hole] = array[index_hole - 1]
          index_hole = index_hole - 1
          @count += 1
        end
        array[index_hole] = item

      end
      
      return @array_ordenado = array
    end
  end
end