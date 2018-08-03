require 'test_helper'

class RubyKataTest < Minitest::Test
  def test_gutter_game
    game = RubyKata.new
    20.times do
      game.roll(0)
    end
    assert_equal(0, game.score)
  end

  def test_all_ones
    game = RubyKata.new
    20.times do
      game.roll(1)
    end
    assert_equal(20, game.score)
  end
end
