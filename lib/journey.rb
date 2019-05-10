class Journey
  attr_reader :entry_station
  PENALTY_FARE = 6

  def initialize(entry_station = nil)
    @entry_station = entry_station
  end

  def finish(station)
    @exit_station = station
  end

  def complete?
    started? && finished?
  end

  def fare
    1 if complete?
    PENALTY_FARE
  end

  private

  def started?
    @entry_station != nil
  end

  def finished?
    @exit_station != nil
  end
end
