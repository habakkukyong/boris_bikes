require_relative 'bike'

class DockingStation
  attr_reader :docked_bikes
  DEFAULT_CAPACITY = 20

  def initialize(capacity = DEFAULT_CAPACITY)
    @docked_bikes = []
    @capacity = capacity
  end

  def release_bike
    fail "There are no bikes" if no_bikes?
    @docked_bikes.pop
  end

  def dock(bike)
    fail "Station is full" if full?
    @docked_bikes.push(bike)
  end

  private

  def full?
    @docked_bikes.length >= DEFAULT_CAPACITY
  end

  def no_bikes?
    @docked_bikes.empty?
  end
end
