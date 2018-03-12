require "minitest/autorun"
require_relative "lab"

class LabTest < MiniTest::Test
  def setup
    @lab = Lab.new
  end

  def teardown
    @lab = nil
  end

  def test_initialize_creates_lab
    # act
    actual = @lab.class
    expected = Lab

    # assert
    assert_equal(expected, actual)
  end

  # def test_initialize_doesnt_create_nil
  #   # act
  #   actual = @lab.class
  #   expected = NilClass
  #
  #   # assert
  #   refute_equal(expected, actual)
  # end

  def test_intialize_sets_name
    actual = @lab.name
    expected = "Devo's Lab"

    assert_equal(expected, actual)
  end

  def test_intialize_sets_width
    actual = @lab.width
    expected = 10

    assert_equal(expected, actual)
  end

  def test_intialize_sets_height
    actual = @lab.height
    expected = 20

    assert_equal(expected, actual)
  end

  def test_less_than_zero_returns_true_when_negative
    actual = @lab.less_than_zero?(-1)
    expected = true

    assert_equal(expected, actual)
  end

  def test_less_than_zero_returns_false_when_zero
    actual = @lab.less_than_zero?(0)
    expected = false

    assert_equal(expected, actual)
  end

  def test_less_than_zero_returns_false_when_positive
    actual = @lab.less_than_zero?(1)
    expected = false

    assert_equal(expected, actual)
  end

  def test_is_zero_returns_true_when_zero
    actual = @lab.is_zero?(0)
    expected = true

    assert_equal(expected, actual)
  end

  def test_is_zero_returns_false_when_not_zero
    actual = @lab.is_zero?(1)
    expected = false

    assert_equal(expected, actual)
  end

  def test_change_name_changes_name
    @lab.change_name("Alex's Lab")

    actual = @lab.name
    expected = "Alex's Lab"

    assert_equal(expected, actual)
  end

  def test_change_name_different_than_original
    @lab.change_name("Alex's Lab")

    new_name = @lab.name
    original_name = "Devo's Lab"

    refute_equal(new_name, original_name)
  end

  def test_area_does_the_thing
    expected = 200
    actual = @lab.area

    assert_equal(expected, actual)
  end
end
