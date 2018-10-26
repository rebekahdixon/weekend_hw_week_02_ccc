class Song
    attr_reader :title

    def initialize(title, lyrics)
      @title = title
      @lyrics = lyrics
    end

    def play_lyric
      return @lyrics
    end





end
