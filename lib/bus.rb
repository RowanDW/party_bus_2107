class Bus

  attr_reader :name, :capacity, :passengers
  def initialize(name, capacity)
    @name = name
    @capacity = capacity
    @passengers = []
  end

  def add_passenger(passenger)
    @passengers << passenger
  end

  def yell_at_passengers
    uppercase_passengers = []
    @passengers.each do |passenger|
      uppercase_passengers << passenger.upcase
    end
    uppercase_passengers
  end

  def number_of_passengers
    @passengers.length
  end

  def over_capacity?
    @passengers.length > @capacity
  end
end
