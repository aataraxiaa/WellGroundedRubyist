module M
  def report
    puts "'report' method in module M"
  end
end

class C
  prepend M

  def dmethod
    puts "Hi 3"
  end
end

class D < C
  def dmethod
    puts "Hi 1"
  end

  def dmethod
    puts "Hi 4"
  end

  def dmethod
    puts "Hi 2"
  end
end

obj = D.new
obj.report
obj.dmethod

puts D.ancestors
