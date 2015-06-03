# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Album.delete_all
Song.delete_all
Genre.delete_all
AlbumSong.delete_all

g1 = Genre.create!(name: 'Blues')
g2 = Genre.create!(name: 'Pop')

a1 = Album.create!(name: 'Thriller', artist: 'Michael Jackson', price: 7)
a2 = Album.create!(name: 'Off The Wall', artist: 'Michael Jackson', price: 7)
a3 = Album.create!(name: 'Bad', artist: 'Michael Jackson', price: 7)

s1 = Song.create!(name: 'Thriller', artist: 'Michael Jackson', price: 1)
s2 = Song.create!(name: 'Shake It Out', artist: 'Florence and the Machine', price: 1)
s3 = Song.create!(name: 'Song 3', artist: 'Adele', price: 1)
s4 = Song.create!(name: 'Song 4', artist: 'Coldplay', price: 1)

a1.album_songs.create!(song_id: s1.id)
a2.album_songs.create!(song_id: s2.id)

a1.album_songs.create!(song: s3)

a1.songs << s4