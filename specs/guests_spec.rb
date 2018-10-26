require('minitest/autorun')
require('minitest/rg')
require_relative('../guest')

class GuestTest < MiniTest::Test

  def setup
    @wallet1 = 45
    @wallet2 = 10
    @wallet3 = 15

    @guest1 = Guest.new("Rebekah", @wallet1)
    @guest2 = Guest.new("Chris", @wallet2)
    @guest3 = Guest.new("Leah", @wallet3)
  end

  def test_guest_name
    expected = "Rebekah"
    actual = @guest1.name
    assert_equal(expected, actual)
  end

  def test_wallet_contents
    expected = 45
    actual = @guest1.wallet_content
    assert_equal(expected, actual)
  end

  def test_has_enough_money
    expected = true
    actual = @guest1.has_money?(15)
    assert_equal(expected, actual)
  end

  def test_has_enough_money__exactly
    expected = true
    actual = @guest1.has_money?(15)
    assert_equal(expected, actual)
  end

  def test_has_enough_money__doesnt
    expected = false
    actual = @guest2.has_money?(15)
    assert_equal(expected, actual)
  end




end
