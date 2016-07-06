require 'docking_station'


describe Docking_station do
#it 'station release_bike' do
#   expect(Docking_station).to respond_to(:release_bike)
  it {is_expected.to respond_to :release_bike} 
end
