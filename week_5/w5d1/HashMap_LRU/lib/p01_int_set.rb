class MaxIntSet

  attr_accessor :store
  def initialize(max)
    @max = max-1
    @store = Array.new(@max) { false }
  end

  def insert(num)
    raise "Out of bounds" if num < 0 || num > @max
    @store[num] = true
  end

  def remove(num)
    store[num] = false
  end

  def include?(num)
    return @store[num]
  end

  private

  def is_valid?(num)
  end

  def validate!(num)
  end
end


class IntSet

  attr_reader :num
  def initialize(num_buckets = 20)
    @num = num_buckets % 20
    @store = Array.new(num_buckets) { Array.new }
  end

  def insert(num)
    @store[@num] << num
  end

  def remove(num)
    @store[@num].reject! { |ele| ele == num }
  end

  def include?(num)
    @store[@num].include?(num) 
  end

  private

  def [](num)
    # optional but useful; return the bucket corresponding to `num`
  end

  def num_buckets
    @store.length
  end
end

class ResizingIntSet
  attr_reader :count
  attr_accessor :num_buckets, :store

  def initialize(num_buckets = 20)
    @store = Array.new(num_buckets) { Array.new }
    @count = 0
    @num = num_buckets % @store.length
  end

  def insert(num)
    if !@store[@num].include?(num)
      @store[@num] << num
      @count += 1
    end
    if @count == @store.length
      resize!
    end
  end

  def remove(num)
    if @store[@num].include?(num)
      @count -= 1
      @store[@num].reject! { |sub| sub == num }
    end
  end

  def include?(num)
    @store[@num].include?(num)
  end

  private

  def [](num)
    # optional but useful; return the bucket corresponding to `num`
  end

  def num_buckets
    @store.length
  end

  def resize!
    # @num = num_buckets * 2 #= @store.length
    # num_buckets = num_buckets * 2 # 40
    old_store = @store.clone.flatten
    @store = Array.new(count * 2) { Array.new }
    old_store.each do |el|
      num = el % @store.length
      @store[@num] << el
    end
  end
end
