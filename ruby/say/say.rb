class Say

  attr_accessor :number

  def initialize number
    @number = number
  end

  def in_english
    raise ArgumentError unless in_range?
    in_a_word || in_many_words
  end

  private
  def in_range?
    number >= LOWER_BOUND && number < UPPER_BOUND
  end

  def in_a_word
    WORDS[number]
  end

  def in_many_words
    exact_magnitude? ? multiple_of_magnitude_in_words : long_number_in_words
  end

  def number_of_digits
    number.to_s.length
  end

  def multiple_of_magnitude_in_words
    [Say.new(number/magnitude).in_english, magnitude_word].join(' ')
  end

  def long_number_in_words
    magnitude_part_and_remainder.map(&:in_english).join(magnitude_separator)
  end

  def magnitude_part_and_remainder
    quotient, remainder = number.divmod(magnitude)
    [Say.new(magnitude * quotient), Say.new(remainder)]
  end

  def exact_magnitude?
    number % magnitude == 0
  end

  def greater_than_1000?
    number < 1_000_000_000
  end

  def magnitude_word
    MAGNITUDE[magnitude]
  end
 
  def magnitude
    10 ** (number_of_digits - 1)
  end

  def magnitude_separator
    # remainder(magnitude) < 10 && number < 100 ? '-' : ' '
    number < 100 ? '-' : ' '
  end

  LOWER_BOUND = 0
  UPPER_BOUND = 1_000_000_000_000

  WORDS = {
    0  => "zero",
    1  => "one",
    2  => "two",
    3  => "three",
    4  => "four",
    5  => "five",
    6  => "six",
    7  => "seven",
    8  => "eight",
    9  => "nine",
    10 => "ten",
    11 => "eleven",
    12 => "twelve",
    13 => "thirteen",
    14 => "fourteen",
    15 => "fifteen",
    16 => "sixteen",
    17 => "seventeen",
    18 => "eighteen",
    19 => "nineteen",
    20 => "twenty",
    30 => "thirty",
    40 => "forty",
    50 => "fifty",
    60 => "sixty",
    70 => "seventy",
    80 => "eighty",
    90 => "ninety"
  }

  MAGNITUDE = {
    100 => "hundred",
    1_000 => "thousand",
    1_000_000 => "million",
    1_000_000_000 => "billion"
  }

end