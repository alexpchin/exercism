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
    @string.each_char.each_with_index.map do |c, i| 
      case i
      when 0 then '(' + c
      when 2 then c + ') '
      when 5 then c + '-'
      else
        c
      end
    end.join
  end

  private
  def extract_number(str)    
    return ERROR_RETURN if str.each_char.reject { |c| c if c[/\d+/] }.join.match(/[a-zA-Z]/)
    str = str.each_char.map { |c| c if c[/\d+/] }.compact.join
    
    if str.length == 10 
      str 
    elsif str.length == 11 && str[0] == '1'
      str[1..-1]
    else
      ERROR_RETURN
    end

  end

  ERROR_RETURN = '0000000000'

  # str.gsub!('[.|-|(|)]', '')
  # string = str.scan(/\d+/).join
  # return '0000000000' if string != str
    
  # if string.length == 10 
  #   string
  # elsif string.length == 11 && string[0] == '1'
  #   string[1..-1]
  # else 
  #   '0000000000'
  # end

end