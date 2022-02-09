require_relative "stacklike"

class Stack
  include Stacklike
end

stack = Stack.new
stack.add_to_stack("item one")
stack.add_to_stack("item two")
stack.add_to_stack("item three")
puts "Objects currently on the stack:"
puts stack.stack
taken = stack.take_from_stack
puts "Removed this object:"
puts taken
puts "Now on stack:"
puts stack.stack
