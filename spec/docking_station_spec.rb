require 'docking_station'

describe DockingStation do

  it { is_expected.to respond_to :release_bike }

  it { is_expected.to respond_to(:dock).with(1).argument }

  it { is_expected.to respond_to(:bikes) }


  describe '#initialization' do
    subject { DockingStation.new }
    let(:bike) { Bike.new }
    it 'has a default capacity' do
      described_class::DEFAULT_CAPACITY.times { subject.dock(bike) }
      expect{subject.dock(bike)}.to raise_error 'Sorry, Docking station full'
    end
  end


  describe '#release_bike' do
    it 'releases a bike' do
      bike = double (:bike)
      allow(bike).to receive(:broken?).and_return(nil)
      subject.dock(bike)
      expect(subject.release_bike).to eq bike
    end
    it 'does not release broken bikes' do
      bike = double(:bike, broken?: true)
      subject.dock(bike)
      expect { subject.release_bike }.to raise_error ("Sorry, there are no bikes")
    end
    it 'raises an error when station is new' do
      expect { subject.release_bike }.to raise_error ("Sorry, there are no bikes")
    end
  end


  describe '#dock' do
    it 'docks something' do
      bike = double(:bike, broken?: nil)
      expect(subject.dock(bike)).to eq [bike]
    end
    it 'returns docked bikes' do
      # Again, we need to return the bike we just docked
      bike = double(:bike, broken?: nil)
      subject.dock(bike)
      expect(subject.bikes).to eq [bike]
    end
    it 'raises an error when docking station is full' do
      bike = double(:bike, broken?: nil)
      subject.capacity.times { subject.dock(bike) }
      expect { subject.dock(bike) }.to raise_error("Sorry, Docking station full")
    end
    it 'has a default capacity' do
      expect(subject.capacity).to eq DockingStation::DEFAULT_CAPACITY
    end
  end


end
