require "minitest/autorun"
require_relative "lab"

class LabTest < MiniTest::Test
  def setup
    @lab = Lab.new
  end

  def teardown
    @lab = nil
  end

  def test_less_than_zero_returns_true
    result = @lab.less_than_zero?(-1)
    expected = true
    assert_equal(expected, result)
  end

  def test_less_than_zero_returns_false
    result = @lab.less_than_zero?(0)
    expected = false
    assert_equal(expected, result)
  end

  def test_less_than_zero_edge
    result = @lab.less_than_zero?("foo")
    expected = false
    assert_equal(expected, result)
  end

  def test_is_zero_returns_true
    result = @lab.is_zero?(0)
    expected = true
    assert_equal(expected, result)
  end

  def test_is_zero_returns_false
    result = @lab.is_zero?(1)
    expected = false
    assert_equal(expected, result)
  end

  def test_change_name_saves_new_name
    @lab.change_name("Josh's Lab")
    result = @lab.name
    expected = "Josh's Lab"
    assert_equal(expected, result)
  end

  def test_area
    result = @lab.area
    expected = 200
    assert_equal(expected, result)
  end
end
