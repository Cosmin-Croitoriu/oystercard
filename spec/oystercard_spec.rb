require 'oystercard'

describe Oystercard do
  describe '#initialize' do
    it 'responds to Oystrcard with one argument' do
      expect(subject).to respond_to(:balance)
    end
  end

  describe '#top_up' do
    it 'allows us to top up the oyster' do
      amount = 20
      subject.top_up(20)
      expect(subject.top_up(amount)).to eq(40)
    end

    it 'raises an error when topping up over the limit' do
      amount = 10
      max_limit = Oystercard::MAX_LIMIT
      subject.top_up(max_limit)
      expect { subject.top_up(amount) }.to raise_error "Top-up limit reached."
    end
  end
end
