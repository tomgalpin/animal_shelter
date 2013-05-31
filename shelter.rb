class Shelter
  attr_accessor :address, :name, :num_pets, :pets, :cages

  def initialize(name, address, cages)
    @address = address
    @name = name
    @cages = cages
    @pets = {}
    @num_pets = @pets.keys.length
  end

  def has_space?
    if @num_pets < @cages
      return true
    else
      return false
    end
  end

  def available_to_receive?
    if has_space? == true
      return "available"
    else
      return "unavailable"
    end
  end

  def to_s
    "The #{@name} at #{@address} has #{@num_pets} pets available to adopt. Also, they are #{available_to_receive?} to receive your pets for donation."
  end
end