class Bubblesort
  def initialize
    @array_ordenado = []
    @count = 0
  end

  def init(array)
    bubble_sort(array, (array.length - 1))
  end

  # retorna o array ordenado
  def return_array_sorted
    @array_ordenado
  end

  # retorna contador
  def return_count
    @count
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
