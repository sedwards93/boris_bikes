require_relative 'bike'

class DockingStation
    DEFAULT_CAPACITY = 20
    attr_reader :capacity

    def initialize
        @bikes = []
        @capacity = DEFAULT_CAPACITY
    end

    def dock(bike) 
        raise "This station already is at capacity" if full?
        bikes << bike
    end

    def release_bike
        raise "There are no bikes" if empty?
        bikes.pop
       end
    
    private

    attr_reader :bikes
    
    def full?
        bikes.count >= @capacity
    end

    def empty?
        bikes.empty?
    end      
end
