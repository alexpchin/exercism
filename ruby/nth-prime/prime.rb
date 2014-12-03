class Prime

  def self.nth(n)
    raise ArgumentError if n < 1
    @primes, @n = [], n
    primes(2)
  end

  # Is this number a prime? If it is, add it to the collection of primes
  def self.primes(i)
    return @primes[-1] if @primes.length == @n
    @primes << i if is_prime?(i)
    primes(i+1)
  end

  def self.is_prime?(n)
    !(2...n).to_a.any? { |d| n%d == 0 }
  end

end