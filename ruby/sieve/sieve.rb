class Sieve

  attr_reader :primes

  def initialize(n)
    @range  = (2..n)
    @array  = (2..n).to_a
    @primes = sieve_of_eratosthenes(n)
  end

  def sieve_of_eratosthenes(n)
    @array.map { |x| x if is_prime?(x) }.compact
  end

  def is_prime?(n)
    !(2..Math.sqrt(n)).to_a.any? { |d| n%d == 0 }
  end

end