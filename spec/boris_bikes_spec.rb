require 'boris_bikes.rb'

describe DockingStation do
  it "exists" do
    test = DockingStation.new
  end
describe "#release_bike" do
  it "removes bike of matching ID from list of bikes" do
    brixton = DockingStation.new([Bike.new(1)])
    brixton.release_bike(1)
    expect(brixton.bikes).to eq([])
  end
end
end

