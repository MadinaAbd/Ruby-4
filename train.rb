class Train
  attr_accessor :speed, :wagons, :route
  attr_reader :type, :stations
  

  def initialize (number, type, wagons)
    @number = number
    @type = type
    @wagons = wagons
  end

  def stop
    @speed = 0
  end

  def get_speed (speed)
    @speed = speed
  end

  def current_speed
    @speed
  end

  def plus_wagon
    if @speed == 0
      @wagons += 1

    elsif @speed != 0 
      puts "Error"     
    end
  end

  def min_wagon 
    if 
      @speed == 0 
      @wagons -= 1
    elsif
      @speed != 0 
      puts "Error"     
    end
  end
  
  def set_route(route)
    @route = route
    @station_index = 0
    current_station.add_train(self)
  end
  
  def current_station
    return unless @route
    @route.route[station_index]
  end

  def next_station
    return unless @route
    @route.route[@station_index + 1]
  end

  def prev_st
    return unless @route
    return if @station_index < 1
    @route.route[@station_index - 1] 
  end

  def move_back
      return unless @route && prev_st
      current_station.send(self)
      @station_index -= 1
      current_station.add_train(self)
  end

  def move_forward
      return unless @route && next_st
      current_station.send(self)
      @station_index += 1
      current_station.add_train(self)
  end

end
