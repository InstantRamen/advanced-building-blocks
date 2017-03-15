module Enumerable
  def my_each
    for item in self do
      yield item
    end
  end
  
  def my_each_with_index
    for i in 0..self.length-1 do
      yield self[i], i
    end
  end
  
  def my_select
    new_array = []
    self.my_each do |item|
      if yield item
        new_array.push item
      end
    end
    return new_array
  end
  
  def my_all?
    self.my_each do |i|
      if !yield i
        return false
      end
    end
    return true
  end
  
  def my_any?
    self.my_each do |i|
      if yield i
        return true
      end
    end
    return false
  end
  
  def my_none?
    self.my_each do |i|
      if yield i
        return false
      end
    end
    return true
  end
  
  def my_count
    if block_given?
      total = 0
      self.each do |i|
        if yield i
          total += 1
        end
      end
      return total
    else
      return self.length
    end
  end
  
  def my_map
    new_array = []
    self.my_each do |i|
      new_array.push yield i
    end
    return new_array
  end
end