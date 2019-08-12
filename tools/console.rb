require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

m1 = Mechanic.new("Joe", "clunker")
m2 = Mechanic.new("Jay", "sport")
m3 = Mechanic.new("Kyle", "standard")
m4 = Mechanic.new("Mickey", "antique")

co1 = CarOwner.new("Dan")
co2 = CarOwner.new("Jack")
co3 = CarOwner.new("Tim")
co4 = CarOwner.new("Sue")
co5 = CarOwner.new("Kim")

car1 = Car.new("VW", "Polo", "clunker", co1, m1)
car2 = Car.new("Porche", "Super", "sport", co2, m2)
car3 = Car.new("VW", "Polo", "standard", co3, m3)
car4 = Car.new("Rolls Royce", "Nice", "antique", co4, m4)
car5 = Car.new("Rolls Royce", "Crazy", "antique", co1, m3)

binding.pry
