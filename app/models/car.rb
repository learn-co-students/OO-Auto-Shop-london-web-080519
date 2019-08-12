class Car

  attr_reader :make, :model, :owner, :mechanic, :classification

  @@all = []

  def initialize(make, model, classification, owner, mechanic)
    @make = make
    @model = model
    @owner = owner
    @mechanic = mechanic
    @classification = classification
    @@all << self
  end

  # Get a list of all cars
  def self.all
    @@all
  end

  # Get a list of all car classifications
  def self.classifications
    self.all.map{|car| car.classification}.uniq
  end

  # Get a list of mechanics that have an expertise that matches the car classification
  def matching_expertise
    Mechanic.all.select{|mechanic| mechanic.specialty == self.classification}
  end

end
