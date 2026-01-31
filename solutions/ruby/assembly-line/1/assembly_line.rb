class AssemblyLine
  NUMBER_OF_CARS_PER_HOUR = 221

  def initialize(speed)
    @speed = speed
  end

  def production_rate_per_hour
    NUMBER_OF_CARS_PER_HOUR * @speed * success_rate
  end

  def working_items_per_minute
    (production_rate_per_hour / 60).floor
  end

  def success_rate
    case @speed
    when 1..4 then 1.0
    when 5..8 then 0.9
    when 9 then 0.8
    when 10 then 0.77
    end
  end
end
