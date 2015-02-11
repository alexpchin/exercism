class Allergies

  ALLERGY_SCORES = {
    cats: 128,
    pollen: 64,
    chocolate: 32,
    tomatoes: 16,
    strawberries: 8,
    shellfish: 4,
    peanuts: 2,
    eggs: 1
  }

  attr_reader :score

  def initialize(score)
    @score = score
  end

  def allergic_to?(string)
    return false if score.zero? 
    return score if exact_allergy?(string)
    list.include?(string)
  end

  def list
    sum = score
    ALLERGY_SCORES.map do |k,v|
      q, r = sum.divmod(v)
      sum -= v if q >= 1
      p sum
      k.to_s if q >= 1
    end.compact.reverse
  end

  private
  def not_allergic?
    score.zero?
  end

  def exact_allergy?(string)
    ALLERGY_SCORES.key(score) == string
  end

end