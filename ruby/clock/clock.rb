class Clock

  MINUTES_IN_HOUR  = 60.to_f
  HOURS_IN_DAY     = 24
  HOURS            = (0...HOURS_IN_DAY).to_a
  SECONDS_MINUTES  = (0..MINUTES_IN_HOUR).to_a
  
  attr_accessor :hours, :minutes

  def initialize(hours=0, minutes=0)
    @hours   = hours
    @minutes = minutes
    self
  end

  def self.at(hours, minutes=0)
    new(hours, minutes)
  end

  def +(n)
    self.minutes = sort_by_time(SECONDS_MINUTES, self.minutes).cycle(2).to_a[self.minutes += n%MINUTES_IN_HOUR]
    self.hours   = sort_by_time(HOURS, self.hours).cycle(2).to_a[self.hours += n/MINUTES_IN_HOUR]
    normalize_24_hour_clock
    self
  end

  def -(n)
    # self.minutes = sort_by_time(SECONDS_MINUTES, self.minutes).cycle(2).to_a.reverse[self.minutes -= n%60]
    # self.hours   = sort_by_time(HOURS, self.hours).cycle(2).to_a.reverse[self.hours -= n/60]
    # normalize_24_hour_clock
    self.minutes += n%MINUTES_IN_HOUR
    self.hours -= (n/MINUTES_IN_HOUR)
    self.hours += HOURS_IN_DAY if self.hours < 0
    self
  end

  def normalize_24_hour_clock
    self.hours -= self.hours if self.hours >= HOURS_IN_DAY
  end

  def to_s
    "#{'%02d' % self.hours}:#{'%02d' % self.minutes}"
  end

  def sort_by_time(array, by)
    array[0...by] + array[by..-1]
  end

  def ==(another_clock)
    self.hours == another_clock.hours && self.minutes == another_clock.minutes
  end

end