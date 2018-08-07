require 'test_helper'

class RubyKataTest < Minitest::Test
  @game = RubyKata.new

  def test_gutter_game
    set_up
    roll_many(20, 0)
    assert_equal(0, @game.score)
  end

  def test_all_ones
    set_up
    roll_many(20, 1)
    assert_equal(20, @game.score)
  end

  def test_one_spare
    set_up
    roll_spare
    @game.roll(3)
    roll_many(17, 0)
    assert_equal(16, @game.score)
  end

  def test_one_strike
    set_up
    roll_strike
    @game.roll(3)
    @game.roll(4)
    roll_many(16,0)
    assert_equal(24, @game.score)
  end

  def test_perfect_game
    set_up
    roll_many(12, 10)
    assert_equal(300, @game.score)
  end

  private

  def roll_many(rolls, pins)
    rolls.times do
      @game.roll(pins)
    end
  end

  def set_up
    @game = RubyKata.new
  end

  def roll_spare
    2.times {@game.roll(5)}
  end

  def roll_strike
    @game.roll(10)
  end

end
