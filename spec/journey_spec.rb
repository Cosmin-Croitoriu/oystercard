require 'journey'

describe Journey do
  let(:station) { double(:station, zone: 1) }
  let(:exit_station) { double(:exit_station, zone: 1) }
  it 'should store start location' do
    journey = Journey.new(station)
    expect(journey.start_location).to eq(station)
  end

  describe '#in_journey?' do
    it 'shoud return true if in journey' do
      subject.start_location = station
      expect(subject.in_journey?).to eq true
    end

    it 'shoud return false if not in journey' do
      subject.start_location = nil
      expect(subject.in_journey?).to eq false
    end
  end


  describe '#finish' do
    it 'finishes the journey' do
      journey = Journey.new(station)
      journey_hash = []
      journey.finish(exit_station)
      expect(journey.journey_hash[station]).to eq(exit_station)
    end
  end

  describe '#complete?' do
    it "it returns true if the journey is complete" do
      journey = Journey.new(station)
      journey_hash = []
      journey.start_location
      journey.finish(exit_station)
      expect(journey.complete?).to eq true
    end
  end
   


end
