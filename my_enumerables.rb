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
    # take as block that should return true or false
    # sort through the items in self to and return an array of items for which the statement is true
    new_array = []
    self.my_each do |item|
      if yield item
        new_array.push item
      end
    end
    return new_array
  end
end