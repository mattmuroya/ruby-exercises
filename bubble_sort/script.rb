def bubble_sort(arr)
  for i in 0..arr.length - 2
    for j in 0..arr.length - 2 - i
      if arr[j] > arr[j + 1]
        temp = arr[j]
        arr[j] = arr[j + 1]
        arr[j + 1] = temp
      end
    end
  end
  arr
end

p bubble_sort([3, 2, 9, 6, 5])
p bubble_sort([4, 3, 78, 2, 0, 2])
