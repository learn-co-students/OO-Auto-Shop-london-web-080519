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

end
