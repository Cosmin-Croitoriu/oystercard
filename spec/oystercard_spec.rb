require 'oystercard'
require 'money'

# in spec/oystercard_spec.rb
describe Oystercard do

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

  # describe '#deduct' do
  #   it 'should deduct money from balance' do
  #   subject.top_up(10)
  #   subject.deduct(5)
  #   expect(subject.balance).to eq(5)
  #   end
  # end

  describe '#touch_in' do
    it 'should not allow user onto train if card balance does not have minimum fare' do
      expect { subject.touch_in }.to raise_error 'not enough funds (minimum fare £1)'
    end

    it 'should return true if in journey' do
      subject.top_up(1)
      expect(subject.touch_in).to be true
    end

  end

  describe '#touch_out' do
    it 'should return false if in journey' do
      expect(subject.touch_out).to be false
    end

    it 'should charge minimum fare when touching out' do
      subject.top_up(1)
      expect {subject.touch_out}.to change{subject.balance}.by(-1)
    end
  end

  describe '#in_journey?' do
    it 'should return true if in journey' do
      subject.top_up(1)
      subject.touch_in
      expect(subject.in_journey?).to be true
    end

    it 'should return false if not in journey' do
      subject.touch_out
      expect(subject.in_journey?).to be false
    end
  end


end

# ISSUE COMMENTS - NameError: uninitialized constant Oystercard
# File path = ./spec/oystercard_spec
# LINE OF ERROR = # ./spec/oystercard_spec.rb:2:in `<top (required)>'
