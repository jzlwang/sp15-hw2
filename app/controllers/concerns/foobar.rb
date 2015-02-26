class Foobar
  def self.baz(arr)
    arr = ((arr.map { |x| x.to_i+2 }).select { |x| (x % 2 == 0) and x <= 10 }).inject{ |sum,x| sum + x }
  end
end
