
def uniq(array)
    new_arr = []
    array.each { |ele| new_arr << ele if !new_arr.include?(ele) }
    new_arr
end