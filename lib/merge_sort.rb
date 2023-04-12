def merge_sort(array)
  return array if array.length == 1

  half1 = merge_sort(array.take(array.length / 2))
  half2 = merge_sort(array.difference(array.take(array.length / 2)))

  array = []

  until half1.empty? || half2.empty?
    half1.first < half2.first ? array << half1.shift : array << half2.shift
  end

  array + half1 + half2
end

merge_sort([4, 8, 6, 2, 1, 7, 5, 3])
