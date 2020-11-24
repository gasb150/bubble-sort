def bubble_sort(array)
  n = array.length
  if n<=1 then  return array end
  i = 0
  while i < n
     step = 1
    while step < (n - i)
      if array[step - 1] > array[step]
        array[step - 1], array[step] = array[step], array[step - 1]
      end
      step += 1
    end
    i += 1
  end
  array
end

p bubble_sort([4, 3, 78, 2, 0, 2])

def bubble_sort_by(array)
  n = array.length
  if n <= 1 then return array end
  i = 0
  while i < n    
    step = 1
    while step < (n - i)
      if yield(array[step - 1], array[step]).positive?
        array[step - 1], array[step] = array[step], array[step - 1]        
      end
      step += 1
    end    
    i += 1
  end
  array
end

p bubble_sort_by(%w('hi hello hey')) { |left, right| left.length - right.length }
