require 'docking_station'

describe DockingStation do
  it {is_expected.to respond_to :release_bike}

  it "releases working bikes" do
    expect(subject.release_bike).to be_working
  end

  it "docks something" do 
    bike = Bike.new
    expect(subject.dock(bike)).to eq(bike)
  end

  it "instance responds to dock method with one argument" do
    expect(subject).to respond_to(:dock).with(1).argument
  end

  it "responds to the bike method" do
   expect(subject).to respond_to(:bike)
  end

  it "returns docked bikes" do
    bike = subject.dock(Bike.new)
    expect(subject.bike).to eq bike
  end
end