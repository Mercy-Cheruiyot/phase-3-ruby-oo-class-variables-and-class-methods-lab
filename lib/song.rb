#require "pry"
class Song
    @@count = 0
    @@genres=[]
    @@artists=[]


    attr_accessor :name, :artist, :genre
    def initialize(name,artist,genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count +=1
        @@genres << genre
        @@artists << artist
    end
    def self.count
        @@count
    end
    def self.genres
        @@genres.uniq
    end
    def self.artists
        @@artists.uniq
    end
    def self.genre_count
        unique_genres = Song::genres
        result={}
        unique_genres.each do |g|
        result["#{g}"] = @@genres.count(g)
        end
        result
    end
    def self.artist_count
        unique_artists = Song::artists
        new_hash = {}
        unique_artists.each do |g|
            new_hash["#{g}"] = @@artists.count(g)
        end
        new_hash
    end
end
#person=Song.new("Mercy","song","ivy")
#binding.pry