class Prime

  def self.nth(n)
    raise ArgumentError if n < 1
    @primes, @n, @i = [], n, 2

    # Recursive soulution
    # recursive(2)

    # Non-recursive solution
    while @primes.length != @n
      @primes << @i if is_prime?(@i)
      @i += 1
    end
    @primes[-1]
  end

  def self.recursive(i)
    return @primes[-1] if @primes.length == @n
    @primes << i if is_prime?(i)
    recursive(i+1)
  end

  def self.is_prime?(n)
    !(2...n).to_a.any? { |d| n%d == 0 }
  end

end