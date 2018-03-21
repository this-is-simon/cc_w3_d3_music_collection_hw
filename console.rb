require('pry')
require_relative('models/album')
require_relative('models/artist')

artist1 = Artist.new('name' => 'Lou Reed')
artist2 = Artist.new('name' => 'Led Zeppelin')
artist3 = Artist.new('name' => 'Nirvana')

album1 = Album.new('title' => 'Satellite of Love', 'genre' => 'pop rock', 'artist_id' => artist1.id)

Artist.delete_all

artist1.save
artist2.save

puts Artist.all
