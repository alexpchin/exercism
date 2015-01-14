class PrimeFactors

  attr_reader :n
  attr_accessor :primes, :factors

  def initialize(n)
    @n       = n
    @factors = []
    # @primes  = all_primes
    @primes  = sieve_of_eratosthenes
    @factors = all_factors if any_primes?
  end 

  def self.for(n)
    new(n).factors
  end

  private
  def any_primes?
    primes.any?
  end

  def sieve_of_eratosthenes
    array = (2..n).to_a
    array -= array.map { |x| multiples(x, n) }.flatten
  end

  def multiples(x, n)
    2.upto(n/x).map { |i| x*i }
  end

  # def all_primes
  #   (2..n).map { |x| x if self.class.is_prime?(x) }.compact
  # end

  # def self.is_prime?(n)
  #   !(2..Math.sqrt(n)).to_a.any? { |d| n%d == 0 }
  # end

  def unique_prime_factors
    primes.map { |y| y if n%y == 0 }.compact
  end

  def all_factors
    unique_prime_factors.each do |prime|
      limit = n
      while limit > 0 do
        if limit%prime == 0
          factors << prime 
          limit = limit/prime
        else
          break
        end
      end
    end
    factors
  end

end