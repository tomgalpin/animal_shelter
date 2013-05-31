class Client
  attr_accessor :name, :occupation, :goal_to_adopt, :pets

  def initialize(name, num_pets, occupation, goal_to_adopt)
    @name = name
    @pets = {}
    @goal_to_adopt = goal_to_adopt
    @occupation = occupation
  end

  def able_to_donate?
    if @num_pets != 0 && @goal_to_adopt == false
      return true
    else
      return false
    end
  end

  def adopt_or_donate
    if @goal_to_adopt == true
      return "adopt"
    else
      return "donate"
    end
  end

  def num_pets
    @pets.keys.length
  end

  def to_s
    "#{@name} the #{@occupation} has #{num_pets} pets.  And they are looking to #{adopt_or_donate}."
  end
end