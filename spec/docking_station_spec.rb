require 'docking_station'


describe DockingStation do

  describe "#release_bike" do
    it "docking station instance is expected to respond to release_bike method" do
      expect(subject).to respond_to(:release_bike)
    end

    it "releases a bike" do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.release_bike).to eq bike
    end

    it "raises an error when there are no bikes" do
      expect {subject.release_bike }.to raise_error "There are no bikes"
    end
  end

  describe '#working?' do
    it 'releases working bikes' do
      subject.dock(Bike.new)
      bike = subject.release_bike
      expect(bike).to respond_to(:working?)
    end
  end

describe '#dock' do
    it 'docks bike at docking station' do
      bike = Bike.new
      station = DockingStation.new
      expect(station.dock(bike)).to eq bike
    end
  end
end