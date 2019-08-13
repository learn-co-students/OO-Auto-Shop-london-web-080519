class CarOwner

  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def get_my_cars
    Car.all.select{|car| car.owner == self}
  end

  def show_my_cars
    get_my_cars.map{|car| "#{car.make} - #{car.model}, #{car.classification}."}
  end

  def my_mechanics
    get_my_cars.map{|car| "#{car.mechanic.name}, for the #{car.make} - #{car.model}." }
  end

  def self.average_cars
    allcars = self.all.map {|owner| owner.get_my_cars.count }
    allcars.reduce(:+) / allcars.count.to_f
  end

end
