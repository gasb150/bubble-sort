def bubble_sort(array)
  n = array.length
  if n<=1
    return array
  end

  pass = 0
  isSorted = false
  while pass<n do
    isSorted = true
    step = 1
    while step<n do
      if array[step-1]>array[step]
        array[step-1], array[step] = array[step], array[step-1]
        isSorted = false
      end
      step +=1
    end
    if isSorted
      return array
    end
    pass +=1
  end
  array
end

p bubble_sort([4,3,78,2,0,2])