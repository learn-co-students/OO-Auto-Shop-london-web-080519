class CarOwner

  @@all = []

  attr_reader :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def cars
    Car.all.select{|car| car.owner == self}
  end

  def mechanics
    cars.map{|car| car.mechanic}
  end

  def self.total_cars
    @@all.map{|owner| owner.cars}.flatten.count
  end

  def self.average_cars_owned
    total_cars.to_f / @@all.count
  end
end
