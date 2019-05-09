class Journey
    attr_accessor :start_location 
    attr_reader :journey_hash

    def initialize(start_location = nil)
      @start_location = start_location
      @journey_hash = {}
    end

    def in_journey?
      !start_location.nil?
    end

    def finish(exit_station)
        @exit_station = exit_station
      @journey_hash[@start_location] = @exit_station
    end

    def complete?
        journey_hash[start_location: @exit_station].nil?
    end

end