require 'oystercard'
describe Oystercard do
  let(:location){double :location}
  let(:location2){double :location2}
  it "stores the journeys into a list" do
    subject.top_up(10)  
    subject.touch_in(location)
    subject.touch_out(location2)
    expect(subject.journey_history).to eq({location => location2})
  end

  it 'has a balance of zero' do
    expect(subject.balance).to eq(0)
  end

  describe '#top_up' do
    it { is_expected.to respond_to(:top_up).with(1).argument }
    it 'can top up the balance' do
      expect{ subject.top_up(1) }.to change{ subject.balance }.by 1
    end
    it 'raises error if maximum balance limit of $90 reached' do
      subject.top_up(90)
      expect { subject.top_up(1) }.to raise_error 'Cannot input that amount! Maximum balance of $90 will be exceeded'
    end
  end
  
  
  describe '#let' do
    
    it "saves the start location" do
      subject.top_up(10)
      subject.touch_in(location)
      expect(subject.start_location).to eq(location)
    end
  end
  # describe '#deduct' do
  #   it 'should deduct money from balance' do
  #   subject.top_up(10)
  #   subject.deduct(5)
  #   expect(subject.balance).to eq(5)
  #   end
  # end

  describe '#touch_in' do
    it 'should not allow user onto train if card balance does not have minimum fare' do
      expect { subject.touch_in(location) }.to raise_error 'not enough funds (minimum fare £1)'
    end

    it 'should return true if in journey' do
      subject.top_up(1)
      expect(subject.touch_in(location)).to be nil
    end

  end

  describe '#touch_out' do
    # it 'should return false if in journey' do
    #   expect(subject.touch_out(location2)).to be location2
    # end

    it 'should charge minimum fare when touching out' do
      subject.top_up(1)
      expect {subject.touch_out(location2)}.to change{subject.balance}.by(-1)
    end
  end

  describe '#in_journey?' do
    it 'should return true if in journey' do
      subject.top_up(1)
      subject.touch_in(location)
      expect(subject.in_journey?).to be true
    end

    it 'should return false if not in journey' do
      subject.touch_out(location2)
      expect(subject.in_journey?).to be false
    end
  end
end
