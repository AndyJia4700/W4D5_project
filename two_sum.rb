def two_sum?(arr, target_sum)
    (0...arr.length).each do |i|
        return true if arr.include?(target_sum - arr[i])
    end
    false     
end

arr = [0, 1, 5, 7]
p two_sum?(arr, 6) # => should be true
p two_sum?(arr, 10) # => should be false