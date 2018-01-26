class Bike
  def working?
    return false if is_broken
    true
  end

  def is_broken
    true
  end
end
