class BubbleSort
  def self.sorty(list)
    sorted = false
    skip = 1

    # loop until no swaps
    until sorted == true
      sorted = true

      # loop the list - n passes already done
      (0...list.length-skip).each do |i|
        #if our left is bigger then right swap
        if list[i] > list[i+1]
          sorted = false
          temp = list[i]
          list[i] = list[i+1]
          list[i+1] = temp
        end
      end
      skip += 1
    end
    puts list
  end
end

BubbleSort.sorty([1, 7, 2, 99])

