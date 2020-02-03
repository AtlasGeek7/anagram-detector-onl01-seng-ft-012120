class Anagram
  attr_accessor :name

  def initialize(word)
    @name = word
  end

  def match(arr)
    arr.select { |w| w.upcase.bytes.sum === @name.upcase.bytes.sum }
  end
end