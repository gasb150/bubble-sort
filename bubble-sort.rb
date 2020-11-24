def bubble_sort(array)
  numbers=array
  n=numbers.length
  a=numbers[0]
  b=numbers[1]
  i=0
  while i<n do
    if a > b
      b=a
    end    
    a=numbers[i]
    puts b
    i+=1
  end
end

bubble_sort([4,3,78,2,0,2])