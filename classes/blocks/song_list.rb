require_relative 'song'

class SongList

    include Enumerable

    def initialize(songs)
        return unless songs.is_a?(Array)
        @songs = songs
    end

    def each
        @songs.each {|item| yield(item)}
    end

    def <<(song)
        @songs << song
    end

    def [](key) 
        return @songs[key] if key.kind_of?(Integer)
        return @songs.find { |aSong| aSong.name == key }
    end

end