class Bob

  def hey(phrase)
    @phrase = phrase.gsub(/[0-9 ]/, '')
    return "Fine. Be that way!" if nothing?
    return "Whoa, chill out!" if yell?
    return "Sure." if question?
    "Whatever."
  end

  def remove_numbers_and_spaces phrase
    phrase.gsub(/[0-9 ]/, '')
  end

  def nothing?
    @phrase.nil? || @phrase.empty?
  end

  def question?
    @phrase[-1] == "?"
  end

  def yell?
    letters_from_phrase == letters_from_phrase.upcase unless letters_from_phrase.nil?
    # letters_from_phrase.split(//).all? { |l| l[/[[:upper:]]/] } unless letters_from_phrase.nil?
  end

  def letters_from_phrase
    @phrase[/[a-zA-Z]+/]
  end

end