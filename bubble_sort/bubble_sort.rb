class BubbleSort

  def initialize(array)
    @array = array.uniq
    sort
  end

  def sort
    while true
      sorted_items = 0

      @array.each_cons(2) do |i, j|
        i_index = @array.index(i)
        j_index = @array.index(j)

        if i < j
          sorted_items += 1
          next
        end

        @array[i_index], @array[j_index] = @array[j_index], @array[i_index]

      end
      break if sorted_items == (@array.length - 1)
    end
    print "Sorted Array: #{@array}\n"
  end
end