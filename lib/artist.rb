class Artist

    attr_accessor :name


    def initialize(name)

        @name = name
        @songs = []

    end

    

    def add_song(song)

        @songs << song
        song.artist = self

    end

    def add_song_by_name(song)

        singer = Song.new(song)
        add_song(singer) 

    end

    def self.song_count

        count = 0
        Song.all.each do |song|
            count += 1
        end
        
        count
    end


    def songs

        Song.all.select  {|song| song.artist = self} 

    end


end