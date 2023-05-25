def bad_two_sum?(arr, target)
  arr.each_with_index do |ele1, idx1|
    arr.each_with_index do |ele2, idx2|
      return true if idx1 < idx2 && ele1 + ele2 == target
    end
  end
  false
end

arr = [0, 1, 5, 7]
p bad_two_sum?(arr, 6) # => should be true
p bad_two_sum?(arr, 10) # => should be false
puts

def okay_two_sum?(arr, target)
  arr.sort!
  i = 0
  j = arr.length - 1
  while i < j
    return true if arr[i] + arr[j] == target
    if arr[i] + arr[j] > target
      j -= 1
    else
      i += 1
    end
  end
  false
end

arr = [8, -2, 3, 5]
p okay_two_sum?(arr, 1) # => should be true
p okay_two_sum?(arr, 4) # => should be false
puts

def two_sum?(arr, target)
  hash = {}
  arr.each do |ele|
    hash[ele] = target - ele
    return true if hash[target - ele] != nil
  end
  false
end

arr = [8, -2, 3, 5]
p two_sum?(arr, 1) # => should be true
p two_sum?(arr, 4) # => should be false
puts

def four_sum?(arr, target)
  
end