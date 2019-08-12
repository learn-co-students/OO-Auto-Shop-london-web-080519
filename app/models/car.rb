class Car

  attr_reader :make, :model, :classification, :owner, :mechanic

  @@all = []

  def initialize(make, model, classification, owner, mechanic)
    @make = make
    @model = model
    @classification = classification
    @owner = owner
    @mechanic = mechanic

    @@all << self
  end

  def self.all
    @@all
  end

  def self.all_classifications
    all.map{|car| car.classification}.uniq
  end

  def find_mechanics_by_speciality
    Mechanic.all.select{|mechanic| mechanic.speciality == self.classification }
  end

end
