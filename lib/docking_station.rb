require_relative 'bike'

class DockingStation
    attr_reader :bikes

    def initialize
        @bikes = []
    end

    def dock(bike) 
        raise "This station already is at capacity" if full?
        @bikes << bike
    end

    def release_bike
        raise "There are no bikes" if empty?
        @bikes.pop
       end
    
    private

    def full?
        @bikes.count >= 20
    end

    def empty?
        @bikes.empty?
    end      
end
