require 'test_helper'

class RubyKataTest < Minitest::Test
  @@game = RubyKata.new
  private
  def rollMany(rolls, pins)
    rolls.times do
      @@game.roll(pins)
    end
  end
  def setUp
    @@game = RubyKata.new
  end

  public
  def test_gutter_game
    setUp
    20.times do
      @@game.roll(0)
    end
    assert_equal(0, @@game.score)
  end

  def test_all_ones
    setUp
    20.times do
      @@game.roll(1)
    end
    assert_equal(20, @@game.score)
  end
end
