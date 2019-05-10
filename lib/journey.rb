class Journey
  def start(station)
    @entry_station = station
  end

  def finish(station)
    @exit_station = station
  end

  def complete?
    started? && finished?
  end

  def fare
    complete? ? 1 : 6
  end

  private

  def started?
    @entry_station != nil
  end

  def finished?
    @exit_station != nil
  end
end
