require "minitest/autorun"
require_relative "lab"

class LabTest < MiniTest::Test
  def setup
    @lab = Lab.new
  end

  def test_change_name_changes_name
    @lab.change_name("Dexter's Lab")

    assert_equal("Dexter's Lab", @lab.name)
  end

  def test_less_than_zero_when_less
    # arrange

    # act
    result = @lab.less_than_zero?(-1)

    # assert
    assert_equal(result, true)
    # assert_equal result, true
    # assert result
    # refute result
  end

  def test_less_than_zero_when_greater
    result = @lab.less_than_zero?(1)

    assert_equal(result, false)
  end

  def test_less_than_zero_when_zero
    result = @lab.less_than_zero?(0)

    assert_equal(result, false)
  end

  def test_is_zero_when_zero
    result = @lab.is_zero?(0)

    assert_equal(result, true)
  end

  def test_is_zero_when_one
    result = @lab.is_zero?(1)

    assert_equal(result, false)
  end

  def test_area
    result = @lab.area

    assert_equal(200, result)
  end
end
