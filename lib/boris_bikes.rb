class DockingStation
  attr_reader :bikes

  def initialize(first_bikes = [])
    @bikes = first_bikes
  end

  def release_bike
    raise "No bikes available" if @bikes.empty?
    return Bike.new
  end

  def dock(bike)
    @bikes.append(bike)
  end
end

class Bike

  def working?
    true
  end
end