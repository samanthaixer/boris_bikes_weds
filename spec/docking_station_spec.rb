require 'docking_station'

describe DockingStation do
  it { is_expected.to respond_to(:release_bike) }

  it 'returns a bike when we call release bike' do
    docking_station = DockingStation.new
    expect(docking_station.release_bike).to be_a(Bike)
    bike = docking_station.release_bike
    expect(bike).to respond_to(:working?)
  end

  it { is_expected.to respond_to(:dock_bike).with(1).argument }

  it 'adds a bike to the docking station when we call dock_bike' do
    docking_station = DockingStation.new
    bike = docking_station.release_bike
    docking_station.dock_bike(bike)
    expect(docking_station.bike_rack).to eq [bike]
  end

  #it { is_expected.to respond_to(:full?) }

  #it { is_expected.to respond_to(:empty?) }
end
