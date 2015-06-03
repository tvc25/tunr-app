class Song < ActiveRecord::Base
  belongs_to :genre
  has_many :albums, through: :album_songs
  has_many :album_songs
end
