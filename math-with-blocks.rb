def values(val1, val2, *rest)
  
  # start off with first value
  result = val1
  
  # append any extra values
  numbers = [val2].concat rest
  
  numbers.each do |i|
    result = yield(i, result)
  end
  
  result
end


def max(val1, val2, *rest)
  
  values(val1, val2, *rest) do |i, result|
    if i >= result then
      i
    else 
      result
    end
  end
  
end

puts "MAX"
puts(max 5, 10, 7, 8, 11, 15, 10, 20)
puts(max 8, 8.2, 8.1)
puts(max 1, 5)
puts(max 4, 2)
puts(max 9, 8, 7, 6, 5)
puts(max 8, 9, 7, 6, 5)
puts(max 9, 8, 7, 6, 15)
puts(max 1, 2, 3, 4, 5, 6, 0.5)


def min(val1, val2, *rest)
  
  values(val1, val2, *rest) do |i, result|
    result = i if i < result
  end
  
end

#puts "MIN"
#puts(min 4, 2)
#puts(min 9, 8, 7, 6, 5)
#puts(min 1, 2, 3, 4, 5, 6, 0.5)