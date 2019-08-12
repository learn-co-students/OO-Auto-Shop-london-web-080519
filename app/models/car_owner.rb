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

  def cars
    Car.all.select{|car| car.owner == self }
  end

  def cars_count
    cars.count
  end

  def mechanics
    cars.map{|car| car.mechanic }.uniq
  end

  def self.average_num_of_cars
    all.sum{|car_owner| car_owner.cars_count } / all.count.to_f
  end

end
