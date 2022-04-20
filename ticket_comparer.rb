require './ticket_threequel.rb'

class TicketComparer

    def self.compare(ticket_one, ticket_two, ticket_three)
        case ticket_one
        when ticket_two                                          
          puts "Same date as #{ticket_two.name}!"
        when ticket_three                                          
          puts "Same date as #{ticket_three.name}!"
        else
          puts "No match."
        end
    end
end

ticket1 = TicketThreequel.new("ticket1", "Town Hall", "07/08/18")
ticket2 = TicketThreequel.new("ticket2", "Convention Center", "07/08/18")
ticket3 = TicketThreequel.new("ticket3", "Town Hall", "08/09/18")
puts "#{ticket1.name} is for an event on: #{ticket1.date}."
TicketComparer.compare(ticket1, ticket2, ticket3)