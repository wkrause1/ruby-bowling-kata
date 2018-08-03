require "Ruby_Kata/version"

class RubyKata
  def initialize
    @score = 0
  end

  def roll(pins)
    @score += pins
  end

  def score
    @score
  end
end