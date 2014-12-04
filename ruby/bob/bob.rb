class Bob

  def hey(phrase)
    @phrase = phrase.gsub(/[0-9\t ]/, '')
    return "Fine. Be that way!" if nothing?
    return "Whoa, chill out!" if yell?
    return "Sure." if question?
    "Whatever."
  end

  def nothing?
    @phrase.nil? || @phrase.empty?
  end

  def question?
    @phrase[-1] == "?"
  end

  def yell?
    letters == letters.upcase unless letters.nil?
  end

  def letters
    @phrase[/[a-zA-Z]+/]
  end

end