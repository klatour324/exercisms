
class Clock
  attr_reader :total_minutes

  def initialize(hour: 0, minute: 0)
    @total_minutes = (hour * 60) + minute
  end

  def to_s
    format('%02d:%02d', hour, minute)
  end

  def +(other)
    @total_minutes += other.total_minutes
    self
  end

  def -(other)
    @total_minutes -= other.total_minutes
    self
  end

  def ==(other)
    to_s == other.to_s
  end

  private

  def hour
    @total_minutes / 60 % 24
  end

  def minute
    @total_minutes % 60
  end
end
