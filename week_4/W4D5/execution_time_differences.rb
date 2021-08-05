# my_min

# Phase I
# First, write a function that compares each element to every other element of the list. 
# Return the element if all other elements in the array are larger.
# What is the time complexity for this function?

def my_min_each(arr)
    arr.each_with_index do |num,i|      # O(N)
        new_arr = arr[0...i].concat(arr[i+1..-1])       # O(N)
        return num if new_arr.all?{|n| n>num }          # O(N^2)
    end
end


# time complexity : O((N * N) * 4) -> O(4N^2) - > O(N^2)


# Phase II
# Now rewrite the function to iterate through the list just once while keeping track of the minimum. 
# What is the time complexity?

def my_min_once(arr)
    min = nil
    arr.each do |num|               # O(N)
        if min == nil || num<min        # 3
            min = num                      #1
        end
    end
    min
end

# time complexity : O(N(3+1)) => O(4N) = > O(N)


# list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
# p my_min_each(list)  # =>  -5
# p my_min_once(list)  # =>  -5
#############################################################################

# Largest Contiguous Sub-sum


# Phase I
# Write a function that iterates through the array and finds all sub-arrays using nested loops. 
# First make an array to hold all sub-arrays. 
# Then find the sums of each sub-array and return the max.

# Discuss the time complexity of this solution.

# def largest_contiguous_subsum (arr)
    # subarrs = nil
    # (0...arr.length).each do |i|
    #     (i...arr.length).each do |j|
    #         if subarrs == nil || arr[i..j].sum > subarrs.sum
    #             subarrs = arr[i..j]
    #         end
    #     end
    # end
    # subarrs.sum
# end

# time complexity: O(n * (n -1)) => O(n^2 - n) => O(n^2) 


# Phase II
# Let's make a better version. Write a new function using O(n) time with O(1) memory. 
# Keep a running tally of the largest sum. To accomplish this efficient space complexity,
#  consider using two variables. One variable should track the largest sum so far and 
#  another to track the current sum. We'll leave the rest to you.

# list2 = [2, 3, -6, 7, -6, 7]
    
def largest_contiguous_subsum (arr)
    largest_sum = arr[0] #8
    sum_curr = arr[0] #1
    i = 1
    while i < arr.length 
        #add eles to sum_curr until sum_curr <= 0 
         if sum_curr <= 0
            sum_curr = 0
        end
        sum_curr += arr[i] 
        p "sum_curr = #{sum_curr}" 
        largest_sum = sum_curr if sum_curr > largest_sum
        p "largest_sum = #{largest_sum}"
        # sum_curr = 0 
        #if sum_curr > largest_sum set largest_sum = sum_curr
        
        i += 1 
    end
    largest_sum
end

# [1] -> 2^1 = 2          [] [1]
# [1,2] -> 2^2 = 4        [], [1],[2],[1,2]
# [1,2,3] -> 2^3 = 8       [], [1],[2],[3], [1,2], [1,3] , [2,3], [1,2,3]


list1 = [5, 3, -7]
p largest_contiguous_subsum(list1) # => 8

# possible sub-sums
[5]           # => 5
[5, 3]        # => 8 --> we want this one
[5, 3, -7]    # => 1
[3]           # => 3
[3, -7]       # => -4
[-7]          # => -7

list2 = [2, 3, -6, 7, -6, 7]
p largest_contiguous_subsum(list2) # => 8 (from [7, -6, 7])

list3 = [-5, -1, -3]
p largest_contiguous_subsum(list3) # => -1 (from [-1])
