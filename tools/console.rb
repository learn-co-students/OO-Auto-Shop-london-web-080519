require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Mechanic.new(name, specialty)
mike = Mechanic.new("Mike", "Antique")
angie = Mechanic.new("Angie", "Exotic")
tommy = Mechanic.new("Tommy", "Clunker")
susie = Mechanic.new("Susie", "Antique")

# CarOwner.new(name)
billy = CarOwner.new("Billy")
sally = CarOwner.new("Sally")
betty = CarOwner.new("Betty")
spok = CarOwner.new("Spok")

# Car.new(make, model, classification, mechanic, owner)
car1 = Car.new("Porsche", "Super edition", "Antique", mike, billy)
car2 = Car.new("Citroen", "Yellow Car", "Exotic", angie, sally)
car3 = Car.new("GM", "From Detroit", "Clunker", tommy, betty)
car4 = Car.new("Ford", "First edition", "Antique", susie, spok)
car5 = Car.new("Ferrari", "The really expensive one", "Exotic", angie, billy)
car6 = Car.new("Ford", "The not great one", "Clunker", tommy, sally)
car7 = Car.new("Secret Car", "Can't find it anywhere", "Exotic", susie, betty)

binding.pry
puts "vroom vroom"
