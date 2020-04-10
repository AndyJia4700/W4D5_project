#Phase I
def my_min1(list)
    sorted = false #O(1)
    prc = Proc.new{|a,b|a<=>b} #O(1), ask ta just in case

    until sorted #O(n)
        sorted = true #O(1)
        (0...list.length-1).each do |i| #O(n)
            if prc.call(list[i], list[i+1]) == 1 #O(1)
                list[i], list[i+1] = list[i+1], list[i] #O(1)
                sorted = false #O(1)
            end
        end
    end
    list.first #O(1)
end

#Phase II
def my_min2(list)
    list.sort.first #O(n)
end

# list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
# p my_min(list)

def sub_sum(list)
    sub_arr = []
    (0...list.length).each do |i| #O(n)
        (i...list.length).each do |j| #O(n)
            sub_arr << list[i..j] if i <= j
        end
    end
    largest_continuous_sub_sum1(sub_arr)
end

def largest_continuous_sub_sum1(list)
    hash = {}
    list.each {|arr| hash[arr] = arr.sum} #O(n)
    hash.sort_by {|k, v| v}.last[0] #O(n)
end


def largest_continuous_sub_sum2(list)
    arr = []
    largest = 0
    (0...list.length).each do |i| #O(n)
        current_sum += list[i]    # current_sum = -1
        if largest < current_sum #largest_sum = 5, && current_sum > list[i] 
            largest = current_sum # 7
        else
            current_sum = 0       
        end
        
    end
end

list = [2, 3, -6, 7, -6, 7]
list = [1,2,3,4,5,-20,11]
current_sum = 6
largest = 15


# list = [5, 3, -7]
p largest_continuous_sub_sum2(list)