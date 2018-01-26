class DockingStation
  attr_reader :bikes, :capacity

  DEFAULT_CAPACITY = 20

  def initialize(capacity=DEFAULT_CAPACITY)
    @bikes = []
    @capacity = capacity
  end

  def release_bike
    empty?
    @bikes.pop
  end

  def dock(bike)
    full?
    @bikes << bike
  end

  private
    def empty?
      raise StandardError.new("Docking station empty!") if @bikes.empty?
    end

    def full?
      raise StandardError.new("Docking station full!") if @bikes.count == capacity
    end
end
