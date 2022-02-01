class Ticket
  attr_reader :venue, :date, :price

  def initialize(venue)
    @venue = venue
  end

  def venue
    @venue
  end

  def date
    @date
  end

  def price=(amount)
    @price = amount
    "hi"
  end

  def price
    @price
  end

  def discount(percent)
    @price = @price * (100 - percent) / 100
    "$#{"%.2f" % @price}."
  end

  def date=(date)
    if !date.match(/\d{4}-\d{2}-\d{2}/)
      puts "Please submit the date in the format 'yyyy-mm-dd'."
      return
    end

    @date = date
  end
end

th = Ticket.new("Town Hall")
th.price = 100.00
puts "The ticket for #{th.venue} has been discounted 15% to #{th.discount(15)}"
th.date = "22-02-01"
puts th.date = "2022-02-01"
