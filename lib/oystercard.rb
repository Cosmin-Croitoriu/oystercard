class Oystercard

  attr_reader :balance
  CAPACITY = 90
  MINIMUM_FARE = 1

  def initialize
    @balance = 0
    @swipe = false
    @location = []
  end

  def top_up(money)
    fail 'Cannot input that amount! Maximum balance of $90 will be exceeded' if full? or @balance + money > CAPACITY
    @balance += money
  end

  def touch_in
    fail 'not enough funds (minimum fare £1)' if @balance < MINIMUM_FARE 
    @swipe = true
  end

  def touch_out
    @balance -= MINIMUM_FARE
    @swipe = false
  end

  def in_journey?
    @swipe
  end

  private
  def deduct(money)
    @balance -= money
  end

  def full?
    @balance > CAPACITY
  end

end
