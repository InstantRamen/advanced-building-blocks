array_to_sort = [10,3,2,4,9,8,5,7,6,1,4,"a"]
def bubble_sort (array)
  loop do
    number_swapped = 0
    array.each_with_index do |number, i|
      if(array[i + 1] && array[i] > array[i + 1])
        array = swap(array, i, i + 1)
        number_swapped += 1
      end
    end
    break if number_swapped == 0
  end
  array
end

def bubble_sort_by
    
end

def swap(array, index_1, index_2)
  array[index_1], array[index_2] = array[index_2], array[index_1]
  array
end

puts bubble_sort(array_to_sort).to_s