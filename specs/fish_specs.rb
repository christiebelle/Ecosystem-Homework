require("minitest/autorun")
require("minitest/rg")

require_relative("../fish.rb")

class FishTest < MiniTest::Test

  def setup
    @fish1 = Fish.new("Ariel")
    @fish2 = Fish.new("Flounder")
    @fish3 = Fish.new("Sebastian")
    @fish4 = Fish.new("Triton")
    @fish5 = Fish.new("Eric")
    @fish6 = Fish.new("Ursula")
  end

  def test_name
    assert_equal("Ariel", @fish1.name)
  end

  def test_fish_sing
    assert_equal("Under the sea, under the sea!", @fish2.fish_sing)
  end

end
