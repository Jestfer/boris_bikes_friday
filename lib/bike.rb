class Bike
  attr_reader :working

  def initialize
    @working = true
  end

  # def working?
  #   return false if is_broken
  #   true
  # end

  def is_broken
    @working = false
  end
end
