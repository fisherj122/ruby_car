class Car
  def initialize(make, year, color)
    @make = make
    @year = year
    @speed = 0
    @lights_on = false
    @parking_brake = false
    @color = color
  end

  def make
    @make
  end

  def year
    @year
  end

  def speed
    @speed
  end

  def details
    "Make: #{@make}, Model Year: #{@year}, Speed: #{@speed}"
  end

  def accelerate
    if @parking_brake == false
      @speed += 10
    end
  end

  def brake
    if @speed < 7
      @speed = 0
    else
      @speed -= 7
    end
  end

  def lights_on?
    @lights_on
  end

  def toggle
    @lights_on = !@lights_on
  end

  def parking_brake?
    @parking_brake
  end

  def park
    if @speed == 0
      @parking_brake = !@parking_brake
    end
  end

  def color
    @color
  end

end
