class Anagram
  attr_accessor :name
  def initialize(word)
    @name = word
  end
  def match(arr)
    arr.select { |w| w.upcase.ord.sum === @name.upcase.ord.sum }
  end
end