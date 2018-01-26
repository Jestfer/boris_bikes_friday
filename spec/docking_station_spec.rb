require 'docking_station'

describe DockingStation do

  it { is_expected.to respond_to :release_bike }

  it { is_expected.to respond_to(:dock).with(1).argument }

  it { is_expected.to respond_to(:bikes) }

  it 'should have a default capacity' do
    expect(subject.capacity).to eq DockingStation::DEFAULT_CAPACITY
  end

  it 'should allow user to set a capacity for the station' do
    
    station = DockingStation.new(25)
    expect(station.capacity).to eq 25
  end
  

  describe '#dock' do
    it "raises an error when dock is full" do
      subject.capacity.times{ subject.dock Bike.new }
      expect { subject.dock Bike.new }.to raise_error(StandardError)
    end

    it "raises an error when dock is empty" do
      expect{ subject.release_bike }.to raise_error(StandardError)
    end
  end
end
