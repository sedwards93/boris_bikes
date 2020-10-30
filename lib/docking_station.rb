require_relative 'bike'

class DockingStation
    attr_reader :bikes

    def initialize
        @bikes = []
    end

    def dock(bike) 
        raise "This station already is at capacity" if @bikes.count >= 20
        @bikes << bike
    end

    def release_bike
        raise "There are no bikes" if @bikes.empty?
        @bikes.pop
       end

end
