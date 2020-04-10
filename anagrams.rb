require "byebug"

def first_anagram?(str1, str2)
    sub_arr = str1.split("").permutation(str1.length).to_a
    return true if sub_arr.include?(str2.split(""))
    false
end

# str1 = "elvis"
# str1 = "elvis"
str1 = (("a".."z").to_a * 10000).join("")
str2 = "lives"
# p first_anagram?(str1, str2)


def second_anagram?(str1, str2)
    # debugger
    (0...str1.length).each do |i|
        idx = str2.split("").find_index(str1[i]) 
        if idx.nil?
            return false
        else
            str2[idx] = ""
        end
    end
    str2 == ""
end

# p second_anagram?(str1, str2)
# require 'benchmark'

# n = 5000000
# Benchmark.bm do |x|
#   x.report { for i in 1..n; a = "1"; end }
#   x.report { n.times do   ; a = "1"; end }
#   x.report { 1.upto(n) do ; a = "1"; end }
# end

def third_anagram?(str1, str2)
    str1.split("").sort == str2.split("").sort 
end

# p third_anagram?(str1,str2)

def fourth_anagram?(str1, str2)
    count(str1) == count(str2)
end

def count(str)
    count = Hash.new(0)
    str.each_char {|ele|count[ele] += 1}
    count
end

# p fourth_anagram?(str1, str2)

   