class Song
    attr_accessor :name, :artist, :genre

    @@count = 0
    @@genres = []
    @@artists = []

    def initialize(name, artist, genre)
        @name = name
        @genre = genre
        @artist = artist
        @@genres << genre
        @@artists << artist
        @@count += 1

    end

    def self.count
        @@count
    end

    def self.genres
        uniq_genres = @@genres.uniq
        uniq_genres
    end

    def self.artists
        uniq_artists = @@artists.uniq
        uniq_artists
    end

    def self.genre_count
        genre_hash = {}
        @@genres.each do |genre|
            if genre_hash[genre]
                genre_hash[genre] += 1
            else
                genre_hash[genre] = 1
            end
        end
        genre_hash
    end

    def self.artist_count
        artist_hash = {}
        @@artists.each do |artist|
            if artist_hash[artist]
                artist_hash[artist] += 1
            else
                artist_hash[artist] = 1
            end
        end
        artist_hash
    end

end

song1 = Song.new("Nikupendeze", "Mercy Masika", "Gospel")
soung2 = Song.new("Mwema", "Mercy Masika", "Reggae")
p Song.artist_count