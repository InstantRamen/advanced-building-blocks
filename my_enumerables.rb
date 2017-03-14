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
end