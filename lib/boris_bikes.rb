class DockingStation
  attr_reader :bikes

  def initialize(first_bikes = [])
    @bikes = first_bikes
  end

  def release_bike(id)
    @bikes.each_with_index do |bike, index|
      @bikes.delete_at(index) if bike.id == id
    end
  end
end

class Bike
  attr_reader :id

  def initialize(id)
    @id = id
  end

  def working?
    true
  end
end