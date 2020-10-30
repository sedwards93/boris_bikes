require_relative 'bike'

class DockingStation
    attr_reader :bike

    def dock(bike) 
        raise "There is already a bike docked" if @bike
        @bike = bike 
    end

    def release_bike
        raise "There are no bikes" unless @bike
        @bike
       end

end
