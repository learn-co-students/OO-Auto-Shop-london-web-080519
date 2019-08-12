class Mechanic

  attr_reader :name, :speciality

  @@all = []

  def initialize(name, speciality)
    @name = name
    @speciality = speciality

    @@all << self
  end

  def self.all
    @@all
  end

  def cars
    Car.all.select{|car| car.mechanic == self}
  end
  
  def car_owners
    cars.map{|car| car.owner }.uniq
  end

  def car_owners_names
    car_owners.map{|co| co.name }
  end

end
