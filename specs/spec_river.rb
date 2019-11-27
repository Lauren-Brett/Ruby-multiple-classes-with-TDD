require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../river')
require_relative('../bears')
require_relative('../fish')

class RiverTest < MiniTest::Test



def setup()
  @fish1 = Fish.new("Boo")
  @fish2 = Fish.new("Hoo")
  @fish3 = Fish.new("Moo")
  @fish_total = [@fish1, @fish2, @fish3]
  @bears = Bears.new("Yogi", "Grizzly")
  @river = River.new("Tay", @fish_total)
end


def test_amount_of_fish_in_river
  assert_equal(3, @river.amount_fish_in_river)
end


def test_remove_fish_from_river
  @river.remove_fish(@fish1)
  assert_equal(2, @river.amount_fish_in_river())
end


def test_fish_removed_by_bear_when_it_eats_it
  @river.remove_fish(@fish1)
  @bears.add_fish(@fish1)
  assert_equal(2, @river.amount_fish_in_river)
  assert_equal(1, @bears.fish_in_stomach)
end


end
