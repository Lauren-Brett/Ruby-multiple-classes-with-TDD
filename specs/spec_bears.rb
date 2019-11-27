require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../bears')
require_relative('../fish')

class BearsTest < MiniTest::Test


def setup()
  @bears = Bears.new("Yogi", "Grizzly")
  @fish = Fish.new("Dolly")

end


def test_count_fish_in_stomach
  assert_equal(0, @bears.fish_in_stomach)
end


def test_add_fish_to_stomach
  @bears.add_fish(@fish)
  assert_equal(1, @bears.fish_in_stomach())
end

def test_if_bear_can_roar
  assert_equal("Roar!", @bears.can_roar)
end

end
