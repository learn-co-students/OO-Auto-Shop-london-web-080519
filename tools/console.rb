require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

rocky = CarOwner.new("Rocky")
ricky = CarOwner.new("Ricky")
racky = CarOwner.new("Racky")

oscar = Mechanic.new("Oscar", "antique")
matt = Mechanic.new("Matt", "antique")
francis = Mechanic.new("Francis", "clunker")
boris = Mechanic.new("Boris", "exotic")
vlad = Mechanic.new("Vlad", "scrap yard")

car1 = Car.new("car 1", "model1", "antique", rocky, oscar)
car2 = Car.new("car 2", "model1", "clunker", rocky, francis)
car3 = Car.new("car 3", "model2", "exotic", rocky, boris)
car4 = Car.new("car 4", "model3", "antique", ricky, oscar)
car5 = Car.new("car 5", "model3", "antique", racky, oscar)
car6 = Car.new("car 6", "model3", "exotic", rocky, boris)

binding.pry
