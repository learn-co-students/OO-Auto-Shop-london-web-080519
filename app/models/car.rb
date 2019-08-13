class Car

  attr_reader :make, :model, :classification, :mechanic, :owner
  @@all = []

  def initialize(make, model, classification, mechanic, owner)
    @make = make
    @model = model
    @classification = classification
    @mechanic = mechanic
    @owner = owner
    @@all << self
  end

  def self.all
    @@all
  end

  def self.car_classifications
    self.all.map {|car| car.classification }
  end

  def get_mechanics_for_class
    Mechanic.all.select{|mechanic| mechanic.specialty == self.classification }.map{|mechanic| mechanic.name}
    #since strings are taken in would later need some functionality to cover typos, otherwise garbage in - garbage out
  end

end
