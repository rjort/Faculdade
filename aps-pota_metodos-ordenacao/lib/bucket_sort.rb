require_relative './insertion_sort.rb'

class Bucketsort
  def initialize
    @count = 0
    @array_ordenado = []
    @insertion = Insertionsort.new
  end

  def init(array)
    bucket_sort(array, array.length)
  end

  def return_array_sorted
    @array_ordenado
  end

  def return_count
    @count
  end

  private

  def count_require_insertion
    @count += @insertion.count
  end

  def bucket_sort(array, bucket_size)
    return nil if array.empty?
    min, max = array.min, array.max
    bucket_count = ((max - min) / bucket_size).floor + 1
    buckets = Array.new(bucket_count)

    (0..buckets.length - 1).each do |i|
      buckets[i] = []
    end
    (0..array.length - 1).each do |i|
      buckets[((array[i] - min) / bucket_size).floor].push(array[i])
    end
    array.clear
    (0..buckets.length - 1).each do |i|
      @count += 1
      @insertion.init(buckets[i])
      buckets[i].each do |value|
        array.push(value)
      end
    end
    @array_ordenado = array
  end
end
