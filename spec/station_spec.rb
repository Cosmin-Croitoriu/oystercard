require 'station'

describe Station do
    it 'should return the zone of a station' do
      station = Station.new('Liverpool Street', 1)
      expect(station.zone).to eq(1)
    end

    it 'should return the name of the station' do
        station = Station.new('Liverpool Street', 1)
        expect(station.name).to eq('Liverpool Street')
    end
end