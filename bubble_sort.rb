def bubble_sort_by (array)
  loop do
    number_swapped = 0
    array.each_with_index do |number, i|
      sort_by = yield(array[i], array[i + 1]) if array[i + 1]
      if(array[i + 1] and sort_by > 0)
        swap(array, i, i + 1)
        number_swapped += 1
      end
    end
    break if number_swapped == 0
  end
  array
end

def bubble_sort (array)
  bubble_sort_by(array) do |left, right|
    left - right
  end
end

def swap(array, index_1, index_2)
  array[index_1], array[index_2] = array[index_2], array[index_1]
  array
end