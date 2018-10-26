require('minitest/autorun')
require('minitest/rg')
require_relative('../song')

class SongTest < MiniTest::Test

  def setup
    @song = Song.new("Run", "Run as fast as you can")
  end

  def test_song_has_title
    expected = "Run"
    actual = @song.title
    assert_equal(expected, actual)
  end

  def test_song_can_play
    expected = "Run as fast as you can"
    actual = @song.play_lyric
    assert_equal(expected, actual)
  end

end
