def bubble_sort(array)
  n = array.length
  return array if n <= 1
  pass = 0
  while pass < n
    step = 1
    while step < (n - pass)
      array[step - 1], array[step] = array[step], array[step - 1] if array[step - 1] > array[step]
      step += 1
    end
    pass += 1
  end
  array
end

p bubble_sort([4, 3, 78, 2, 0, 2])

def bubble_sort_by(array)
  n = array.length
  return array if n <= 1  
  pass = 0
  while pass < n
    step = 1
    while step < (n - pass)
      array[step - 1], array[step] = array[step], array[step - 1] if yield(array[step - 1], array[step]).positive?
      step += 1
    end
    pass += 1
  end
  array
end

p bubble_sort_by(%w[hi hello hey]) { |left, right| left.length - right.length }
