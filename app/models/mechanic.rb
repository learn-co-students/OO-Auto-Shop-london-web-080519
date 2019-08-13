class Mechanic

  attr_reader :name, :specialty
  @@all = []

  def initialize(name, specialty)
    @name = name
    @specialty = specialty
    @@all << self
  end

  def self.all
    @@all
  end

  def get_my_cars
    Car.all.select{|car| car.mechanic == self}
  end

  def show_my_cars
    get_my_cars.map{|car| "#{car.make} - #{car.model}. "}
  end

  def car_owners
    get_my_cars.map{|car| car.owner }
  end

  def car_owners_names
    car_owners.map{|owner| owner.name}
  end

end
