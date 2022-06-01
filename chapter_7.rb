# Literal constructors
s1 = String.new('Hi')
s2 = 'Hi'
p s1, s2

a1 = Array.new([1,2,3])
a2 = [1,2,3]
p a1, a2

# Defining operators by defining methods
obj = Object.new
def obj.+(other_obj)
  self + other_obj
end

obj = 1
puts obj + 1

# Customizing unary operators
class String
  def +@
    upcase
  end
end

s = 'hi'
puts +s

# Bang (!) methods and danger

# Destructive effects (receiver changing)
s = 'hi'
p s.upcase
p s
p s.upcase!
p s

# Built-in to_* conversion methods

# Every object, except `BasicObject`s responds to `to_s`
p ["one", "two"].to_s
p Object.new.to_s

# `puts` calls `to_s` on it's arguments
class CustomToS
  def to_s
    'This is our CustomToS string representation!'
  end
end

puts CustomToS.new

# Interpolation also calls `to_s`
p "to_s -> #{CustomToS.new}"

# Every Ruby object, except `BasicObject` instances, has an `inspect` method
p CustomToS.new.inspect

class CustomToS
  def inspect
    'CustomToS inspect value!'
  end
end

p CustomToS.new.inspect

# Array conversion using `to_a` and the `*` operator
p (1..5).to_a
Computer = Struct.new(:os, :manufacturer)
macbook = Computer.new('os x', 'Apple')
p macbook.to_a

# The `*` splat/star/unarray operator
a1 = [1,2,3]
a2 = [a1]
p a2
a2 = [*a1]
p a2

def combine_names(first, last)
  "#{first} #{last}"
end

names = ['pete', 'smith']
result = combine_names(*names)
p result

# Numerical conversion with `to_i` and `to_f`

puts '1'.to_i
puts 'hi'.to_i
puts '123hi'.to_i
puts 'hi123'.to_i
puts 'h1e2l3l40'.to_i