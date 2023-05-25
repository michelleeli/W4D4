list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]

def my_min(lists)

    lists.each_with_index do |ele1, idx1|
        return lists[idx1] if lists.all? { |ele2| ele1 <= ele2} 
    end 
end 

puts my_min(list)

def my_min2(lists)
    min = 0
    lists.each do |ele|
        min = ele if ele < min
    end 
    min
end 

puts my_min2(list)

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

def largest_contiguous_subsum2(list)
    sub = []
    max = list[0]
    i = list.length-1
    while i >= 0 
    if !sub.empty?
        sub << list[0..i]
        i -=1 
    end 
end 