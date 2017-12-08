require "minitest/autorun"
require_relative "lab"

class LabTest < MiniTest::Test
  def setup
    @lab = Lab.new
  end

  def teardown
    @lab = nil
  end

  # def teardown
  #   Lab.destroy_all
  # end

  def test_initialize_sets_name
    #arrange

    #act
    name = @lab.name

    #assert
    assert_equal("Devo's Lab", name)
  end

  def test_initialize_sets_width
    width = @lab.width
    assert_equal(10, width)
  end

  def test_initialize_sets_height
    height = @lab.height
    assert_equal(20, height)
  end

  def test_less_than_zero_when_not_negative
    result = @lab.less_than_zero?(0)

    assert_equal false, result
    # refure result
  end

  def test_less_than_zero_when_negative
    result = @lab.less_than_zero?(-1)

    assert result
  end

  def test_less_than_zero_when_not_integer
    assert_raises ArgumentError do
      @lab.less_than_zero?("hello")
    end
  end

  def test_is_zero_when_zero
    result = @lab.is_zero?(0)

    assert result
  end

  def test_is_zero_when_not_zero
    result = @lab.is_zero?(1)

    refute result
  end

  def test_change_name
    @lab = Lab.new
    @lab2 = Lab.new

    @lab2.change_name("Sweet New Name")

    refute_equal @lab.name, @lab2.name
    assert_equal "Sweet New Name", @lab2.name
  end

  def test_area
    result = @lab.area

    assert_equal 200, result
  end
end
