class Countsort
  def initialize
    @array_ordenado = []
    @count = 0
  end

  # min_max[0] = menor valor
  # min_max[1] = maior valor
  def init(array)
    min_max = array.minmax # adeus memoria o/
    count_sort(array, min_max[0], min_max[1])
  end

  def return_array_sorted
    @array_ordenado
  end

  def return_count
    @count
  end

  private

  def count_sort(array, min, max)
    if min > max
      return 'algo deu errado pqp'

    else
      n = max - min + 1
      size = array.length
      aux = Array.new(size)
      count = Array.new(n, 0)

      (0...size).each do |i|
        count[array[i] - min] += 1
      end
      (1...n).each do |i|
        count[i] += count[i - 1]
        @count += 1
      end
      (0...size).each do |i|
        aux[count[array[i] - min] - 1] = array[i]
        count[array[i] - min] -= 1
      end
      (0...size).each do |i|
        array[i] = aux[i]
      end
    end
    @array_ordenado = array
  end
end
