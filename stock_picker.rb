def stock_picker array
    sorted = array.sort
    array.each do |i|
        first = array.find_index(sorted[i])
        last = array.find_index(sorted[-1-i])
        if first < last
            return [first, last]
        end
    end
end

p stock_picker([17,3,6,9,15,8,6,1,10])
