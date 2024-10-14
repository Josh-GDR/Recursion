def fibonacci(target, n = 0, m = 1)
  print n
  return if n >= target
  print ', '
  fibonacci(target, m, n + m)
end

def merge(left_array = [], right_array = [], sortedArray = [])
  if right_array.none?
    left_array.each { |element| sortedArray.push element }
    return sortedArray
  end

  if left_array.none?
    right_array.each { |element| sortedArray.push element }
    return sortedArray
  end
  
  if left_array.first <= right_array.first
    sortedArray.push left_array.first
    left_array.delete(left_array.first)
    return merge(left_array, right_array, sortedArray)    
  end

  if left_array.first >= right_array.first
    sortedArray.push right_array.first
    right_array.delete(right_array.first)
    return merge(left_array, right_array, sortedArray)    
  end

  sortedArray
end

def split(array = [])
  if (array.length == 1)
    return array
  end

  merge_sort(array)
end

def merge_sort(array = [])
  half = array.length/2
  left_array = split(array[0...half])
  right_array = split(array[half...array.length])

  merge(left_array, right_array)
end

puts '|---  FIBONACCI  ---|'
fibonacci(8)
puts ''
puts '|---  MERGE SORT ---|'
array = [3, 2, 1, 13, 8, 5, 0, 1]
puts merge_sort(array).join(', ')