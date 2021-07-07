class Bus

  attr_reader :name, :capacity, :passengers
  #Creates a bus with given name and capacity, starts with no passengers
  def initialize(name, capacity)
    @name = name
    @capacity = capacity
    @passengers = []
  end

  #Adds a passenger(string) to the end of the passenger list
  def add_passenger(passenger)
    @passengers << passenger
  end

  #Returns the passenger list in all capital letters
  def yell_at_passengers
    uppercase_passengers = []
    @passengers.each do |passenger|
      uppercase_passengers << passenger.upcase
    end
    uppercase_passengers
  end

  #Returns the number of passengers on the bus
  def number_of_passengers
    @passengers.length
  end

  #Returns true if the number of passengers doesn't exceed the capacity
  def over_capacity?
    @passengers.length > @capacity
  end

  #Removes the oldest passenger (first on the list) from the passenger list
  def kick_out
    @passengers.shift
  end
end
