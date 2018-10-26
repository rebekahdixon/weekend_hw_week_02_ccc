require('minitest/autorun')
require('minitest/rg')
require_relative('../room')
require_relative('../song')
require_relative('../guest')

class RoomTest < MiniTest::Test

  def setup
    @guest1 = Guest.new("Rebekah", 45)
    @guest2 = Guest.new("Chris", 10)
    @guest3 = Guest.new("Leah", 25)
    @guest4 = Guest.new("John", 60)


    @song1 = Song.new("Superman", "mow the lawn, swim")
    @song2 = Song.new("Simon says", "touch your nose")
    @song3 = Song.new("Say la vi", "say you'' do what i dont")

    @till = 150

    @room = Room.new(@till)
  end

  def test_room_has_songs
    expected = 1
    @room.add_song(@song1)
    actual = @room.count_songs
    assert_equal(expected, actual)
  end

  def test_how_many_guests__checkin
    expected = 1
     @room.checkin_guest(@guest1)
    actual = @room.count_guests
    assert_equal(expected, actual)
  end

  def test_how_many_guests__checkout
    expected = 1
    @room.checkin_guest(@guest1)
    @room.checkin_guest(@guest2)
    @room.checkout_guest(@guest1)
    actual = @room.count_guests
    assert_equal(expected, actual)
  end

  def test_till_amount
    expected = 150
    actual = @room.till_amount
    assert_equal(expected, actual)
  end

  def test_money_added_to_till
    expected = 165
    actual = @room.add_to_till(15)
    assert_equal(expected, actual)
  end


    def test_pay_entry__sale_ok
    expected1 = 165
    expected2 = 30

    @room.pay_entry(15, @guest1)

    actual1 = @room.till_amount
    actual2 = @guest1.wallet_content
    assert_equal(expected1, actual1)
    assert_equal(expected2, actual2)
  end

  def test_sell_to_customer__sale_fail
    expected1 = 150
    expected2 = 10

    @room.pay_entry(15, @guest2)

    actual1 = @room.till_amount
    actual2 = @guest2.wallet_content
    assert_equal(expected1, actual1)
    assert_equal(expected2, actual2)
  end


end
