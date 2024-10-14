def fibonacci(target, n = 0, m = 1)
  print n
  return if n >= target
  print ', '
  fibonacci(target, m, n + m)
end

puts '|---  FIBONACCI  ---|'
fibonacci(8)
puts ''
puts '|---  MERGE SORT ---|'
array = [3, 2, 1, 13, 8, 5, 0, 1]
h = array.length/2