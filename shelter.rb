class Shelter
  attr_accessor :address, :name, :num_pets, :pets, :cages

  def initialize(address, name, cages)
    @address = address
    @name = name
    @cages = cages
    @num_pets = @pets.count
    @pets = {}
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
      return "avalable"
    else
      return "unavailable"
    end
  end

  def to_s
    "The #{name} at #{address} and they have #{@num_pets} available to adopt. They are #{available_to_receive} pets for donation."
  end
end