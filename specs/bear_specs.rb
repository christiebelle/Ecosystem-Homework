require("minitest/autorun")
require("minitest/rg")

require_relative("../bear.rb")
require_relative("../fish.rb")
require_relative("../river.rb")


class BearTest < MiniTest::Test

  def setup
    @bear1 = Bear.new("Mordu", "cursed")
    @bear2 = Bear.new("Winnie", "pooh bear")
    @river1 = River.new("Johnson")
    @fish1 = Fish.new("Ariel")
    @fish2 = Fish.new("Flounder")
  end

  def test_roar
    assert_equal("I am Mordu, the cursed bear. Hear me roar!", @bear1.roar)
  end

  def test_food_count
    assert_equal(0, @bear1.food_count)
  end

  def test_catch_fish
    @bear2.catch_fish(@fish2)
    assert_equal(1, @bear2.food_count)
  end

  def test_fish_from_river
    @river1.add_fish_to_river(@fish1)
    @river1.add_fish_to_river(@fish2)
    @bear2.catch_fish(@river1)
    @bear2.catch_fish(@river1)

    assert_equal(2, @bear2.food_count())
    assert_equal(0, @river1.fish_count())
  end

end

#
# We are going to build a small ecosystem! We want to create an
# ecosystem made up of 3 parts: bears, river and fish. You will
# need a class for each of these. From this you can make instances
# and build your ecosystem.
#
# A bear should be able to take a fish from the river
#
# A river should lose a fish when a bear takes a fish
#
