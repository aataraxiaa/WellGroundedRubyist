# >> 5.my_times {|i| puts "I'm on iteration #{i}!" } I'm on iteration 0!
# I'm on iteration 1!
# I'm on iteration 2!
# I'm on iteration 3!
# I'm on iteration 4!
# => 5

class Array
  def my_each
    c = 0
    until c == size
      yield self[c]
      c += 1
    end
    self
  end
end

class Integer
    def my_times
        (0...self).to_a.my_each { |i| yield i }
    end
end

5.my_times {|i| puts "I'm on iteration #{i}!" }