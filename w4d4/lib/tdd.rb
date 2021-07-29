
def uniq(array) 
    new_arr = []
    array.each { |ele| new_arr << ele if !new_arr.include?(ele) }
    new_arr
end

def my_transpose(array)
  transposed_arr = []
  (0...array.length).each do |row|
    sub_array = []
    (0...array.length).each do |col|
      sub_array << array[col][row]
    end
    transposed_arr << sub_array
  end
  transposed_arr
end

class Array

  def two_sum
    sums = []
    (0...self.length).each do |i|
      (i+1...self.length).each do |j|
        sums << [i,j] if self[i] + self[j] == 0
      end
    end
    sums
  end
end

def stock_picker(array)
  stock_pairs = []
  largest_difference = 0
  largest_current_pair = []

  (0...array.length).each do |i|
    (i+1...array.length).each do|j|
      if largest_difference > array[i] - array[j]
        largest_difference = array[i] - array[j]
        largest_current_pair = [i,j]
      elsif largest_difference == array[i] - array[j]
        stock_pairs = [largest_current_pair] 
        stock_pairs << [i,j]
      end
    end
  end
  return stock_pairs if stock_pairs.length > 0
  largest_current_pair
end
