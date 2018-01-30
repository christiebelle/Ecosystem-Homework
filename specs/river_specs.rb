require("minitest/autorun")
require("minitest/rg")

require_relative("../river.rb")
require_relative("../fish.rb")


class RiverTest < MiniTest::Test

  def setup
    @river1 = River.new("Wilkinson")
    @river2 = River.new("Leonard")
  end

  def test_name
    assert_equal("Wilkinson", @river1.name)
  end

  def test_fish_count
    assert_equal(0, @river1.fish_count)
  end

  def test_add_fish_to_river
    @river1.add_fish_to_river(@fish1)
    assert_equal(1, @river1.fish_count)
  end

def test_clear_fish
  assert_equal(0, @river1.fish_count)
end

end
