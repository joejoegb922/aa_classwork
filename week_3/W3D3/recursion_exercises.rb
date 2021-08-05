
def range(min, max)
    return [] if max == min
    [min] + range(min + 1, max)
end

# p range(0,1) # => [0]
# p range(0, 2) # => [0, 1]
# p range(0, 10) # => [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
# p range(-10, 10) # => [-10, -9, ..., 0, ..., 9]
# puts "\n\n"


def range_iter(min, max)
    (min...max).to_a
end

# p range_iter(0,1) # => [0]
# p range_iter(0, 2) # => [0, 1]
# p range_iter(0, 10) # => [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
# p range_iter(-10, 10) # => [-10, -9, ..., 0, ..., 9]


def exponent_1(num, exp)
    return 1 if exp == 0
    return num if exp <= 1
    num * exponent_1(num, exp-1)
end

# p exponent_1(2, 0) # => 1
# p exponent_1(2, 2) # => 4
# p exponent_1(3, 4) # => 81
# puts "\n\n"



# exp(2, 2) => exp(2, 1/2)
# exp(num, 0) => 1
# exp(num, 1) => num
# exp(num, n) => exp(b, n/2) ** 2 when it is even
# exp(num, n) => b * (exp(b, (n-1)/2) ** 2) when it is odd


def exponent_2(num, exp)
    return 1 if exp == 0 
    return num if exp == 1
    if exp % 2 == 0 
        exponent_2(num, exp/2) ** 2  # => 1
    else
        num * exponent_2(num, (exp-1)/2) ** 2 
    end
end


# p exponent_2(2, 0) # => 1
# p exponent_2(2, 2) # => 4
# p exponent_2(2, 3) # => 8
# p exponent_2(2, 10) # => 1024




def deep_dup(arr)
    return [] if arr.length == 0
    first_ele = arr[0]

    if first_ele.is_a?(Array) 
        [deep_dup(first_ele)] + deep_dup(arr[1, arr.length - 1])
    else
        return [first_ele] + deep_dup(arr[1, arr.length - 1])
    end

end


# p deep_dup([1,2])
# p deep_dup([1,2,3])
# p deep_dup([1])

# p deep_dup([1,[2]])
# p deep_dup([1,[2,3]]) 
# p deep_dup([[1]])







def fib_recursive(n)
    return [0] if n == 0
    return [0, 1] if n == 1
    return [0, 1, 1] if n == 2
    fib_recursive(n-1) << fib_recursive(n-1)[-1] + fib_recursive(n-1)[-2]
end

# p fib_recursive(1)
# p fib_recursive(2)
# p fib_recursive(3)
# p fib_recursive(4)
# p fib_recursive(5)
# p fib_recursive(6)
# p fib_recursive(10)

def fib_iteration(n)
    return [0] if n == 0
    memo = [0, 1]
    (2..n).each do |i|
        memo << memo[-1] + memo[-2]
    end
    memo
end

# p fib_iteration(1)
# p fib_iteration(2)
# p fib_iteration(3)
# p fib_iteration(4)
# p fib_iteration(5)
# p fib_iteration(6)
# p fib_iteration(10)

def bsearch(array, target)
    middle_index = array.length / 2
    
    if target == array[middle_index]
        return middle_index
    elsif array.length <= 1 
        return nil
    elsif target < array[middle_index]
        return bsearch(array[0...middle_index], target)
    elsif target > array[middle_index]
        result = bsearch(array[middle_index+1..-1], target)
        if result != nil
            return result + (middle_index + 1)
        else
            return nil
        end
    end
end


# p bsearch([1], 1) # => 0
# p bsearch([2], 1) # => nil
# p bsearch([1,2], 2) # => 1
# p bsearch([1,2], 1) # => 0
# p bsearch([1, 2, 3], 1) # => 0
# p bsearch([2, 3, 4, 5], 3) # => 1
# p bsearch([2, 4, 6, 8, 10], 6) # => 2
# p bsearch([1, 3, 4, 5, 9], 5) # => 3
# p bsearch([1, 2, 3, 4, 5, 6], 6) # => 5
# p bsearch([1, 2, 3, 4, 5, 6], 0) # => nil
# p bsearch([1, 2, 3, 4, 5, 7], 6) # => nil


def merge_sort(arr) # [left=[2,3] right=[5]][4,1]
    return [] if arr.length == 0
    return arr if arr.length == 1
    mid = arr.length / 2
    left_arr = arr[0...mid]
    right_arr = arr[mid..-1]
    left = merge_sort(left_arr)
    right = merge_sort(right_arr)
    merge_sorted_halves(left, right)
end

def merge_sorted_halves(left_arr, right_arr) 
    result = []
    while left_arr.length > 0 && right_arr.length > 0
        if left_arr[0] > right_arr[0]
            result << right_arr.shift
        else
            result << left_arr.shift
        end
    end
    result += left_arr + right_arr
end

# p merge_sort([1,3])
# p merge_sort([1,3,5,2,4,6]) # => [1,2,3,4,5,6]
# p merge_sort([2,4,6,1,3,5]) 
# p merge_sort([4,5,6,1,2,3])
# p merge_sort([4,5,6,1,2])
# p merge_sort([4])
# p merge_sort([3,2])


def subsets(arr)
    return [arr] if arr.length == 0
    first_pass = subsets(arr[0...-1])
    second_pass = subsets(arr[1..-1])
    first_pass + second_pass + [arr]
end
# p subsets([1,2,3])
# p subsets([])
# p subsets([1])

def permutations(array)
    # since permutations is in the form of n!
    # we will want to think of the recursion
    # in this format:
    #       permute(arr)-> 1 * 2 * 3
end



def make_change(amount, coins)
    coins.sort!.reverse!
    coins.each do |coin|
        if amount / coin >= 2 
            pouch = make_change((amount-coin), coins)
        end

    end
end

p make_change(24, [10, 7, 1]) #=> [10, 7, 7]




