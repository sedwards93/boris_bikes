require 'boris_bikes.rb'

describe DockingStation do
  it "exists" do
    test = DockingStation.new
  end
  describe "#release_bike" do
    it "returns a working bike" do
      brixton = DockingStation.new([Bike.new])
      expect(brixton.release_bike).to be_a_kind_of(Bike)
      expect(brixton.release_bike.working?).to eq(true)
    end
  end
end

describe Bike do
  it "correctly returns if working" do
    new_bike = Bike.new
    expect(new_bike.working?).to eq(true)
  end

end
