class Anagram
  attr_accessor :name

  def initialize(word)
    @name = word
  end

  def ascii_sum(str)
    sum =  0
    str.upcase.split("").each { |c| sum += c.ord }
    return sum
  end

  def match(arr)
    arr.select { |w| ascii_sum(w) === ascii_sum(@name) if (w.size === @name.size) }
  end
end