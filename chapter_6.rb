# Rescue in a method - fine-grained
def open_user_file
  print 'File to open: '
  filename = gets.chomp
  begin
    fh = File.open(filename)
  rescue => exception
    puts "Could not open file #{filename}"
    puts "Error: #{exception}"
    return
  end
  puts fh
  fh.close
end
# open_user_file

# Debugging with `binding.irb`
def divide_by_user_input
  print 'Enter a number: '
  n = gets.to_i
  binding.irb
  begin
    result = 100 / n
  rescue ZeroDivisionError
    puts "Your number didn't work. Was it zero???"
    exit
  end
  puts "100/#{n} is #{result}."
end
# divide_by_user_input

# Safe navigation operator
class Roster
  attr_accessor :players
end

class Player
  attr_accessor :name, :position

  def initialize(name, position)
    @name = name
    @position = position
  end
end

moore = Player.new("Maya Moore", "Forward")
taurasi = Player.new("Diana Taurasi", "Guard")
tourney_roster1 = Roster.new
tourney_roster1.players = [moore, taurasi]

tourney_roster2 = Roster.new
# if tourney_roster2.players&.first&.position == "Forward"
#   puts "Forward: #{tourney_roster1.players.first.name}"
# end

# Explicitly raising erros
def fussy_method(x)
  raise ArgumentError, 'I need a better argument!'
end
# fussy_method p

# Capturing an exception in a rescue clause
# begin
#   fussy_method 20
# rescue ArgumentError => exception
#   puts exception.message
#   puts exception.backtrace
# end

# The `ensure` clause
def line_from_file(filename, substring)
  fh = File.open(filename)
  begin
    line = fh.gets
    raise ArgumentError unless line.include?(substring)
  rescue ArgumentError
    puts "Invalid line!"
    raise
  ensure
    fh.close
  end
  line
end

# puts line_from_file('baker.rb', 'class')

# Creating your own exceptions
class MyNewException < StandardError
end

# raise MyNewException, 'Raising my new exception!'

unless true
  puts 'false'
end