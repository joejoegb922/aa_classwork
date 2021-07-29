
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
