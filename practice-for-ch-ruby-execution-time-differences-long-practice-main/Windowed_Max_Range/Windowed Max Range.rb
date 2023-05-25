def windowed_max_range(arr, w)
    current_max_range = nil
    max_diff = 0

    arr.each_with_index do |ele, idx|
        min_ele = arr[idx...idx+w].min
        max_ele = arr[idx...idx+w].max
        diff = max_ele - min_ele 
        if diff > max_diff
            current_max_range = arr[idx...idx+w]
            max_diff = diff
        end 
    end 
    max_diff
end 

p windowed_max_range([1, 0, 2, 5, 4, 8], 2) == 4 # 4, 8
p windowed_max_range([1, 0, 2, 5, 4, 8], 3) == 5 # 0, 2, 5
p windowed_max_range([1, 0, 2, 5, 4, 8], 4) == 6 # 2, 5, 4, 8
p windowed_max_range([1, 3, 2, 5, 4, 8], 5) == 6 # 3, 2, 5, 4, 8

