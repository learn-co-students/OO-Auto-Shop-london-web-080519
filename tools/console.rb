require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


car_owner1 = CarOwner.new("jeff")
car_owner2 = CarOwner.new("john")

mechanic1 = Mechanic.new("giusepe", "antique")
mechanic2 = Mechanic.new("manu", "exotic")
mechanic3 = Mechanic.new("joe", "clunker")
mechanic4 = Mechanic.new("jack", "clunker")

car1 = Car.new("ferrari", "enzo", "antique", car_owner1, mechanic1)
car2 = Car.new("pontiac", "gto", "exotic", car_owner1, mechanic2)
car3 = Car.new("vw", "golf", "clunker", car_owner2, mechanic3)
car4 = Car.new("porsche", "carrera", "exotic", car_owner2, mechanic2)



binding.pry
