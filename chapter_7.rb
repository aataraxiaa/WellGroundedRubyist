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

# Every object, except `BasicObject`s, responds to `to_s`
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

# Stricter conversions with Integer and Float
# Integer('123a')
puts Integer('123')

# Role-playing to_* methods

# String role-playing with to_str
class Person
  def initialize(name, age)
    @name = name
    @age = age
  end
  def to_str
    @name
  end
end
person = Person.new('Pete', 21)
combined = 'Hi ' + person
puts combined

# Array role-playing with to_ary
class Person
  def to_ary
    [@name, @age]
  end
end

array = ['Person']
array << person
puts array

# Boolean states, Boolean objects, and nil

# True and false as states
if (class MyClass end)
  puts "Empty class definition is true!"
else
  puts "Empty class definition is false!"
end
if (class MyClass; 1; end)
  puts "Class definition with the number 1 in it is true!"
else
  puts "Class definition with the number 1 in it is false!"
end
if (def m; return false; end)
  puts "Method definition is true!"
else
  puts "Method definition is false!"
end
if "string"
  puts "Strings appear to be true!"
else
  puts "Strings appear to be false!"
end
if 100 > 50
  puts "100 is greater than 50!"
else
  puts "100 is not greater than 50!"
end

# true and false as objects
puts true.class
puts true.class.superclass
puts false.class
puts false.class.superclass

# The special object nil
puts nil.class
puts nil.class.superclass
puts !!nil
puts nil.to_i
puts nil.object_id

# Comparing two objects