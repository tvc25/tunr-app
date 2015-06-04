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
a4 = Album.create!(name: 'BEYONCE', artist: 'Beyonce', price: 7)
a12 = Album.create!(name: 'Centenials and ', artist: 'Beyonce', price: 7)
a5 = Album.create!(name: 'The Marshall Mathers LP 2', artist: 'Eminem', price: 7)
a6 = Album.create!(name: '1989', artist: 'Taylor Swift', price: 7)
a7 = Album.create!(name: 'Crash My Party', artist: 'Luke Bryan', price: 7)
a8 = Album.create!(name: 'In The Lonely Hour', artist: 'Sam Smith', price: 7)
a9 = Album.create!(name: 'Ghost Stories', artist: 'Coldplay', price: 7)
a10 = Album.create!(name: 'X', artist: 'Ed Sheeran', price: 7)
a11 = Album.create!(name: 'Nothing Was The Same', artist: 'Drake', price: 7)


s1 = Song.create!(name: 'Thriller', artist: 'Michael Jackson', price: 1)
s2 = Song.create!(name: 'Shake It Out', artist: 'Florence and the Machine', price: 1)
s3 = Song.create!(name: 'Stay With Me', artist: 'Sam Smith', price: 1)
s4 = Song.create!(name: 'Magic', artist: 'Coldplay', price: 1)
s5 = Song.create!(name: 'Shake It Off', artist: 'Taylor Swift', price: 1)
s6 = Song.create!(name: "Hold On, We're Going Home", artist: 'Taylor Swift', price: 1)

a1.album_songs.create!(song_id: s1.id)
a2.album_songs.create!(song_id: s2.id)

a1.album_songs.create!(song: s3)

a1.songs << s4