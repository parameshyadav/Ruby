class Car
  def initialize(brand = "unknown", max_speed = 0, current_speed = 0)
    @brand = brand
	@max_speed = max_speed
	@current_speed = 0
  end
  
  def accelarate
    @current_speed +=1
  end
  
  def drive   
    accelarate until @current_speed >= @max_speed
    puts "You have reached the max speed of #{@max_speed}" if @current_speed == @max_speed
  end
end

class Camero < Car
  def initialize
    super(brand = "chevy",max_speed = 200) 
  end
end

camero_instance = Camero.new

camero_instance.drive