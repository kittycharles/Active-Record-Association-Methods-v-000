class Artist < ActiveRecord::Base
  has_many :songs
  has_many :genres, through: :songs

  def get_genre_of_first_song
    self.genre.first
  end

  def song_count
    self.count
  end

  def genre_count
    self.genre.count
  end
end
