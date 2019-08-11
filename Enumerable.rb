module Enumerable

  def my_each
    i = 0
    while i < self.size
      yield(self[i])
      i+=1
    end
    self
  end

  def my_each_with_index
    i = 0
    index = 0
    while i < self.size
      yield(index, self[i])
      i += 1
      index += 1
    end
  end

  def my_select
    result = []
    self.my_each do |current|
      if yield(current)
        result << current
      end
    end
    result
  end

  def my_all?
    ans = true
    self.my_each do |current|
      if !yield(current)
         ans = false
      end
    end
    ans
  end

  def my_any?
    ans = false
    self.my_each do |current|
      if yield(current)
        ans = true
      end
    end
    ans
  end

  def my_none?
    ans = true
    self.my_each do |current|
      if yield(current)
        ans = false
      end
    end
    ans
  end

  def my_count
    count = 0
    self.my_each do |current|
      if yield(current)
        count += 1
      end
    end
    count
  end

  def my_map
    result = []
    self.my_each do |current|
      if yield(current)
        result << current
      end
    end
    result
  end

  def my_inject
    result = 0
    for i in 0..self.length-1
      result = yield(result, self[i])
    end
    result
  end

end

#[5,2,12,3231,"21"].my_each_with_index do |index, i|
#  puts "#{index}: #{i}"
#end

#res = [5,2,12,2321,"21321"].my_select do |current|
#  current == 2321
#end
#puts res

#res = [5, 15, 20, 34].my_all? do |current|
#  current < 30
#end
#puts res

#res = [5, 15, 20, 3212].my_any? do |current|
#  current == 3212
#end
#puts res

#res = [5, 15, 20, 40].my_none? do |current|
#  current == 40
#end
#puts res

#res = [5, 15, 23213, 3213 ,321].my_count do |current|
# current < 20
#end
#puts res

#res = [5, 15, 231231, 21, 231].my_map do |current|
#  current < 22
#end
#puts res.inspect

res = [5, 15, 231231, 21, 231].my_map do |total, current|
  total * current
end
puts res
