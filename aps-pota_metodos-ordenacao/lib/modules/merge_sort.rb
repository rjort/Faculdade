module SortModule
  class Mergesort
    attr_reader :array_ordenado, :count

    def initialize
      @array_ordenado = []
      @count = 0
    end

    def init(array)
      merge_sort(array)
    end

    def print_sort
      puts @array_ordenado.to_s
    end

    def print_count
      puts @count.to_s
    end

    private

    def merge_sort(array)
      return array if array.length <= 1

      left = []
      right = []
      mid = array.length / 2

      # cria o arranjo da esquerda
      for i in 0..(mid - 1) do
        left[i] = array[i]
      end
      # cria o arranjo da direita
      for i in mid..(array.length - 1) do
        right[i - mid] = array[i]
      end

      # a partir daqui o bagulho fica loko na
      # recursao e consumo de memoria...
      left = merge_sort(left)
      right = merge_sort(right)

      # aqui crio o 'merge' dos arrayes 'l''r'
      return merge(left, right)
    end

    def merge(left, right)
      i = 0 # incrementa o contador para inteirar a esquerda
      j = 0 # incrementa o contador para inteirar a direita
      x = 0 # incrementa o contador para inteirar o resultado

      # esse array e retornado quando ta tudo 'ok'
      result = Array.new

      while(i < left.size || j < right.size) do
        @count += 1
        if(i < left.size && j < right.size)
          @count += 1
          if(left[i] < right[i])
            @count += 1
            result[x] = left[i]
            i += 1
            x += 1
          else
            result[x] = right[j]
            j += 1
            x += 1
          end

        elsif(i < left.size)
          @count += 1
          result[x] = left[i]
          i += 1
          x += 1

        elsif(j < right.size)
          @count += 1
          result[x] = right[j]
          j += 1
          x += 1

        end
      end

      @array_ordenado = result
    end
  end
end
