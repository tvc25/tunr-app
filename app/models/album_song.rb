class AlbumSong < ActiveRecord::Base
  belongs_to :album
  belongs_to :song
end
