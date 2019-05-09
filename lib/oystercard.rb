class Oystercard

  attr_reader :balance , :start_location, :journey_history
 CAPACITY = 90
 MINIMUM_FARE = 1

 def initialize
    @balance = 0
    @start_location = nil
    @journey_history = {}
 end

 def top_up(money)
    fail 'Cannot input that amount! Maximum balance of $90 will be exceeded' if full? or @balance + money > CAPACITY
    @balance += money
 end

 def touch_in(location)
    fail 'not enough funds (minimum fare £1)' if @balance < MINIMUM_FARE
    @start_location = location
    @journey_history[location] = nil
    
 end

 def touch_out(location2)
    @balance -= MINIMUM_FARE
    @journey_history[@start_location] = location2
 end

 def in_journey?
    @start_location != nil
    end

 private
  def deduct(money)
    @balance -= money
  end

  def full?
    @balance > CAPACITY
  end
end
