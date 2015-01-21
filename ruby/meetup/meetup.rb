class Meetup

  TEENTH_RANGE      = 13..19
  MEETUP_TYPES      = %w(first second third fourth)
  DAYS_OF_THE_WEEK  = %w(monday tuesday wednesday thursday friday saturday sunday)

  # MEETUP_TYPES.each.with_index do |schedule, index|
  #   define_method(schedule.to_sym) do |type|
  #     yield[index+1]  
  #   end
  # end

  DAYS_OF_THE_WEEK.each do |day|
    define_method(day.to_sym) do
      month_array.select.with_index do |m,i| 
        m if DAYS_OF_THE_WEEK[m.wday-1] == day && TEENTH_RANGE.include?(i+1)
      end.first
    end
  end

  attr_reader :month, :year, :number_of_days_in_month, :month_array

  def initialize(month, year)
    @month = month
    @year  = year
    @number_of_days_in_month = Date.new(year, month, -1).mday
    @month_array = month_builder
  end

  def day(weekday, schedule)
    self.send(weekday)
    # month_array
  end

  def month_builder
    (1..number_of_days_in_month).map { |d| Date.new(year, month, d) }
  end

  def teenth
  end

end