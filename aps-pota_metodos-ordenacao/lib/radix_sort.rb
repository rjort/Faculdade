class Radixsort
  def initialize
    @array_ordenado = []
    @count = 0
  end
  
  def init(array)
    radix_sort(array)
  end

  def return_array_sorted
    @array_ordenado
  end

  def return_count
    @count
  end

  private

  def radix_sort(array)
    max_value = array.max
    exp = 0

    until max_value.zero?
      exp += 1
      max_value = (max_value / 10)
    end

    for i in 0...exp do
      array = radix(array, i)
      @count += 1
    end

    @array_ordenado = array
  end

  def radix(array, exp = 0)
    array_c = Array.new(10, 0)
    result = Array.new(array.length())
    m = 10 ** (exp + 1)
    n = 10 ** exp

    array.each do |value|
      num = (value % m) / n
      array_c[num] += 1
    end
    for i in 1...10 do
      array_c[i] = array_c[i-1] + array_c[i]
    end

    i = (array.length() - 1)
    until i.negative?
      value = array[i]
      num = (value % m) / n
      array_c[num] -= 1
      result[array_c[num]] = value
      i -= 1
    end
    return result
  end
end
