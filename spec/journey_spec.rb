require 'journey'

describe Journey do
  let(:entry_station) {double :entry_station}
  let(:exit_station) {double :exit_station}
  describe '#start' do
    it 'starts a journey' do
      expect(subject).to respond_to(:start).with(1).argument
    end
  end

  describe '#finish' do
    it 'finish a journey' do
      expect(subject).to respond_to(:finish).with(1).argument
    end
  end

  describe '#complete?' do
    it 'checks if the journey is complete' do
      subject.start(entry_station)
      subject.finish(exit_station)

      expect(subject.complete?).to eq(true)
    end

    it 'checks if the journey is not completed' do
      subject.start(entry_station)

      expect(subject.complete?).to eq(false)
    end

    it 'checks if the journey is not completed' do
      subject.finish(exit_station)

      expect(subject.complete?).to eq(false)
    end
  end

  describe "#fare" do
    it 'charges minimum fare for completed journey' do
      subject.start(entry_station)
      subject.finish(exit_station)

      expect(subject.fare).to eq(1)
    end

    it 'charges penalty fare for not completed journey' do
      subject.start(entry_station)

      expect(subject.fare).to eq(6)
    end
  end

end
