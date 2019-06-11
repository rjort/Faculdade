module SortModule
  class Bubblesort
    attr_reader :array_ordenado, :count

    def initialize
      @array_ordenado = []
      @count = 0
    end

    def init(array)
      bubble_sort(array, (array.length - 1))
    end

    def print_sort
      puts @array_ordenado.to_s
    end

    def print_count
      puts @count.to_s
    end

    private

    def bubble_sort(array, n)
      loop do
        swapped = false

        n.times do |i|
          if array[i] > array[i + 1]
            array[i], array[i + 1] = array[i + 1], array[i]
            @count += 1
            swapped = true
          end
        end

        break unless swapped
      end

      @array_ordenado = array
    end
  end
end
