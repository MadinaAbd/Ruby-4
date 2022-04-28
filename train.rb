class Train
  attr_accessor :speed
  attr_accessor :wagons
  attr_reader :type 
  attr_reader :stations
  

  def initialize (number, type, wagons)
    @number = number
    @type = type
    @wagons = wagons
  end

  def stop
    @speed = 0
  end

  def cr_speed (speed)
    @speed = speed
  end

  def current_speed
    @speed
  end

  def plus_wagon 
    if 
      @speed == 0 
        wagons + 1
    elsif
      @speed != 0 
      puts "Error"     
    end
  end
   def min_wagon 
    if 
      @speed == 0 
        wagons - 1
    elsif
      @speed != 0 
      puts "Error"     
    end
  end
end
