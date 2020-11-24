def bubble_sort(array)
  n = array.length
  if n<=1 then  return array end
  pass = 0
  while pass < n
     step = 1
    while step < (n - pass)
      if array[step - 1] > array[step]
        array[step - 1] ,array[step] = array[step] ,array[step - 1]
      end
      step += 1
    end
    pass += 1
  end
  array
end

p bubble_sort([4, 3, 78, 2, 0, 2])

def bubble_sort_by(array)
  n = array.length
  if n <=1 then return array end

  pass = 0
  is_sorted = false
  while pass < n
    is_sorted = true
    step = 1
    while step < (n - pass)
      if yield(array[step - 1], array[step]).positive?
        array[step - 1], array[step] = array[step], array[step - 1]
        is_sorted = false
      end
      step += 1
    end
    if is_sorted then return array end

    pass += 1
  end
  array
end

p bubble_sort_by(['hi', 'hello', 'hey']) { |left, right| left.length - right.length }
