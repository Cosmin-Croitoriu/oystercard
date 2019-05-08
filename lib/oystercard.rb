class Oystercard
<<<<<<< HEAD
  attr_accessor :balance
  DEFAULT_VALUE = 0
  MAX_LIMIT = 90

  def initialize(balance= DEFAULT_VALUE)
    @balance = balance
  end

  def top_up(amount)
    raise "Top-up limit reached." if @balance + amount > MAX_LIMIT
    @balance += amount
  end
=======

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

>>>>>>> 54157055ea77e04701e286ba347222b383c8280c
end
