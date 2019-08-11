def bubble_sort array
  for i in 0..array.length-1
    for j in i..array.length-1
      if(array[i] > array[j])
        temp = array[i]
        array[i] = array[j]
        array[j] = temp
      end
    end
  end
  array
end

#print bubble_sort [4,3,78,2,0,2]

def bubble_sort_by array
  for i in 0..array.length-1
    for j in i..array.length-1
      if yield(array[i], array[j]) > 0
        temp = array[i]
        array[i] = array[j]
        array[j] = temp
      end
    end
  end
  array
end

result = bubble_sort_by(['hi', 'hello', 'hey']) do |left, right|
  left.length - right.length
end
puts result.join(" ")
