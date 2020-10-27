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

    it "throws an error when there are no bikes" do
      empty = DockingStation.new
      expect(empty.release_bike).to raise_error
    end
  end

  describe "#bikes" do
    it "returns a list of bikes currently at the docking station" do
      test_bike = Bike.new
      brixton = DockingStation.new([test_bike])
      expect(brixton.bikes).to eq([test_bike])
    end
  end

  describe "#dock" do
    it "adds given bike to list of bikes" do
      test1 = Bike.new
      test2 = Bike.new
      brixton = DockingStation.new([test1])
      brixton.dock(test2)
      expect(brixton.bikes).to eq([test1, test2])
    end
  end
end

describe Bike do
  it "correctly returns if working" do
    new_bike = Bike.new
    expect(new_bike.working?).to eq(true)
  end
end
