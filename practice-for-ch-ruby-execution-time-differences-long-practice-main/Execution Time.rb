list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]

def my_min(lists)

    lists.each_with_index do |ele1, idx1|
        return lists[idx1] if lists.all? { |ele2| ele1 <= ele2} 
    end 
end 

puts my_min(list)
puts

def my_min2(lists)
    min = 0
    lists.each do |ele|
        min = ele if ele < min
    end 
    min
end 

puts my_min2(list)
puts

def largest_contiguous_subsum(list)
    subs = []
    max = 0
    list.each_with_index do |ele1, idx1|
        list.each_with_index do |ele2, idx2|
            subs << list[idx1..idx2] if idx1 <= idx2 
        end 
    end 
    subs.each do |sub|
        max = sub.sum if sub.sum > max
    end 
    max
end 

arr = [5,3,-7]
arr2 = [2,3,-6, 7, -6, 7]
p largest_contiguous_subsum(arr2)
puts

def largest_contiguous_subsum2(list)
  positive_nums = []
  negative_nums = []
  list.each  { |ele| ele > 0 ? positive_nums << ele : negative_nums << ele }

  if negative_nums.empty?
    return positive_nums.sum
  elsif positive_nums.empty?
    greatest_sum = negative_nums.first
    negative_nums.each { |ele| greatest_sum = ele if ele > greatest_sum }
    return greatest_sum
  else
    largest_sum = 0
    curr_largest_sum = 0

    i = 0
    k = 0

    list_length = list.length
    while i < list_length
      curr_largest_sum += list[i]
      if curr_largest_sum > largest_sum
        largest_sum = curr_largest_sum
      end

      if i == list_length - 1
        k += 1
        i = 0
        i += k
        curr_largest_sum = 0
      end
      
      if k == list_length - 1
        return largest_sum
      end

      i += 1

    end
  end
end

list = [-5, -1, -3]
p largest_contiguous_subsum2(list) # => -1 (from [-1])

list = [2, 3, -6, 7, -6, 7]
p largest_contiguous_subsum2(list) # => 8 (from [7, -6, 7])