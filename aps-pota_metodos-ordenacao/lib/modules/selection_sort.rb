module SortModule
  class Selectionsort
    attr_reader :array_ordenado, :count

    def initialize
      @array_ordenado = []
      @count = 0
    end

    def init(array)
      selection_sort(array, array.length - 1)
    end

    def print_sort
      puts @array_ordenado.to_s
    end

    def print_count
      puts @count.to_s
    end

    private

    def selection_sort(array, n)
      n.times do |i|
        index_min = i

        (i + 1).upto(n) do |j|
          index_min = j if array[j] < array[index_min]
          @count += 1
        end

        array[i], array[index_min] = array[index_min], array[i] if index_min != i
      end

      @array_ordenado = array
    end
  end
end