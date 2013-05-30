class Pets
  attr_accessor :name, :type, :toys, :owner, :healthy

  def initialize(name, type, toys, owner, healthy)
    @name = name
    @type = type
    @toys = []
    @owner = owner
    @healthy = healthy
  end

  def available_to_adopt?
    if @owner == "shelter" && @healthy == true
      return true
    else
      return false
    end
  end

  def healthy?
    if @healthy == true
      return "healthy"
    else
      return "unhealthy"
    end
  end

  def to_s
    "This is #{@name}, a #{type}, and their favorite toy is a #{@toys} and it is #{healthy?}"
  end

end

