# - If the phone number is less than 10 digits assume that it is bad
#   number
# - If the phone number is 10 digits assume that it is good
# - If the phone number is 11 digits and the first number is 1, trim the 1
#   and use the last 10 digits
# - If the phone number is 11 digits and the first number is not 1, then
#   it is a bad number
# - If the phone number is more than 11 digits assume that it is a bad
#   number

class PhoneNumber

  attr_accessor :string

  def initialize(str)
    @string = extract_number(str)
  end

  def number
    @string
  end

  def area_code
    @string[0..2]
  end

  def to_s
    PHONE_FORMAT.zip(@string.chars).compact.join
  end

  private
  def extract_number(str)    
    return ERROR_RETURN if str.chars.reject { |c| c if c[/\d+/] }.join.match(/[a-zA-Z]/)
    str = str.chars.map { |c| c if c[/\d+/] }.compact.join
    
    if str.length == 10 
      str 
    elsif str.length == 11 && str[0] == '1'
      str[1..-1]
    else
      ERROR_RETURN
    end

  end

  ERROR_RETURN = '0000000000'
  PHONE_FORMAT = ['(',nil,nil,') ',nil, nil, '-', nil, nil, nil, nil]

end