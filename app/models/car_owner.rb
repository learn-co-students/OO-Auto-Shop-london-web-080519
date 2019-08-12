class CarOwner

  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  # Get a list of all owners
  def self.all
    @@all
  end

  # Get a list of all the cars that a specific owner has
  def cars
    Car.all.select{|car| car.owner == self}
  end

  # Get a list of all the mechanics that a specific owner goes to
  def mechanics
    cars.map{|car| car.mechanic}.uniq
  end

  # Get the average amount of cars owned for all owners
  def self.average_cars
    total = self.all.map{|owner| owner.cars.count}.sum
    total.to_f/self.all.size
  end

end
