class Gear
  attr_reader :chainring, :cog 
  
  def initialize(chainring, cog, rim, tire)
    @chainring = chainring
    @cog = cog 
    @wheel = Wheel.new(rim,tire)
  end

  def ratio
  chainring / cog.to_f
  end
  #assumes rim and tire sizes are given in inches
  def gear_inches 
    ratio * wheel.diameter
  end
end

class Wheel
  attr_reader :rim, :tire

  def intitializer(rim,tire)
    @rim = rim
    @tire = tire
  end

  def diameter
    rim + (tire*2)
  end 

  def circumference
    diameter : Math::PI 
  end
end


