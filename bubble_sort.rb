def bubble_sort(array)
  sorted_array = []

  while true
    is_sorted = true

    array.each_with_index do |number, index|
      if array.empty? || array[index + 1] == nil
        break
      elsif array[index] > array[index + 1]
        array[index + 1], array[index] = array[index], array[index + 1]
        is_sorted = false
      end
    end

    if is_sorted
      sorted_array = array.concat(sorted_array)
      break
    else
      sorted_array.unshift(array.pop)
    end
  end

  return sorted_array
end

bubble_sort([4, 3, 78, 2, 0, 2])
