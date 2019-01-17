class Artist < ActiveRecord::Base
  has_many :songs

  def self.create_or_find_by_name(name)
    artist = Artist.find_by(name: name)
    if artist.nil?
      artist = Artist.create(name: name)
    end
    artist
  end
end
