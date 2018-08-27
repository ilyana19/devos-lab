require "minitest/autorun"
require "minitest/pride"
require_relative "lab"

class LabTest < MiniTest::Test
  def setup
    @lab = Lab.new
    @snaff = Lab.new(name: "Snaff Memorial Lab", width: 20, height: 10)
  end

  def test_initialize_with_defaults_sets_default_name
    assert_equal("Devo's Lab", @lab.name)
  end

  def test_initialize_with_defaults_sets_default_width
    assert_equal(10, @lab.width)
  end

  def test_initialize_with_defaults_sets_default_height
    assert_equal(20, @lab.height)
  end

  def test_initialize_with_name_sets_name
    assert_equal("Snaff Memorial Lab", @snaff.name)
  end

  def test_initialize_with_name_sets_width
    assert_equal(20, @snaff.width)
  end

  def test_initialize_with_name_sets_height
    assert_equal(10, @snaff.height)
  end

  def test_less_than_zero_is_true_when_negative
    assert(@lab.less_than_zero?(-5)) # => if expected result is boolean true
  end

  def test_less_than_zero_is_false_when_positive
    refute(@lab.less_than_zero?(5)) # => if expected result is boolean false
  end

  def test_less_than_zero_is_false_when_zero
    refute(@lab.less_than_zero?(0))
  end

  def test_is_zero_when_zero
    assert(@lab.is_zero?(0))
  end

  def test_is_zero_when_positive
    refute(@lab.is_zero?(1))
  end

  def test_is_zero_when_negative
    refute(@lab.is_zero?(-1))
  end

  def test_change_name
    @lab.change_name("Dexter's Lab")
    assert_equal("Dexter's Lab", @lab.name)
  end

  def test_area_calculates_area
    assert_equal(200, @lab.area)
  end
end
