class Room

  def initialize(till)
    @till = till
    @guests = []
    @songs = []
  end

  def add_song(song)
    @songs << song
  end

  def checkin_guest(guest)
    @guests << guest
  end

  def checkout_guest(guest)
    @guests.delete(guest)
  end

  def count_songs
    return @songs.count
  end

  def count_guests
    return @guests.count
  end

  def till_amount
    return @till
  end

  def add_to_till(price)
    @till += price
  end


  def pay_entry(price, guest)
    if guest.has_money?(price)
      guest.pay_money(price)
      add_to_till(price)
    end
  end

end
