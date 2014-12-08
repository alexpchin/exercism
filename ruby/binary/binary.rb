class Binary

  attr_reader :to_decimal

  def initialize(binary)
    @to_decimal = convert(binary)
  end

  def convert(binary)
    return 0 if has_alphanumeric_characters?(binary)
  end

  private
  def has_alphanumeric_characters?(binary)
    binary.respond_to?(:match) && binary.match(/[a-zA-Z]/)
  end

end