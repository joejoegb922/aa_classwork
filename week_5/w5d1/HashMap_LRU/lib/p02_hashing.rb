class Integer
  # Integer#hash already implemented for you
end

class Array
  def hash
    sum = 0
    self.each.with_index do |int, idx|
      sum += (int.hash * idx)
    end
    sum
  end
end

class String
  def hash
    sum = 0
    alpha = ("a".."z").to_a
    self.each_char.with_index do |char, idx|
    integer = alpha.index(char)
      sum += integer.hash * idx
    end
    sum

    # sum = 0
    # self.each_char.with_index do |char, idx|
    #   sum += char.hash * idx
    # end
    # sum 
  end
end

class Hash
  # This returns 0 because rspec will break if it returns nil
  # Make sure to implement an actual Hash#hash method
  def hash
    arr = []
    sum = 0

    self.each do |k, v|
      arr += [k, v]
    end

    arr.each do |el|
      sum += el.hash 
    end
    sum
  end
end
