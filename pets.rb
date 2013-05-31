class Pet
  attr_accessor :name, :type, :toys, :healthy

  def initialize(name, type, toys, healthy)
    @name = name
    @type = type
    @toys = toys
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
      return "a healthy"
    else
      return "an unhealthy"
    end
  end

  def to_s
    "This is #{@name}, #{healthy?} #{type}, and their favorite toy is a #{@toys}."
  end

end

