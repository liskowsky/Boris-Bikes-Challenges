require 'docking_station'

describe Docking_station do

  it {is_expected.to respond_to :release_bike}

  it 'release working bikes' do
    bike = Bike.new
    expect(bike).to be_working
  end

  describe "#release_bike" do
    it "releases a bike" do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.release_bike).to eq bike
    end
    it "raises an error" do
      expect { subject.release_bike }.to raise_error "No bikes available"
    end
  end

  it { is_expected.to respond_to(:dock).with(1).argument }

  it {is_expected.to respond_to(:bike)}

  it "docks something" do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.bike).to eq bike
  end

end
