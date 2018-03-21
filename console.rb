require('pry')
require_relative('models/album')
require_relative('models/artist')

artist1 = Artist.new('name' => 'Lou Reed')
artist2 = Artist.new('name' => 'Led Zeppelin')
artist3 = Artist.new('name' => 'Nirvana')

Album.delete_all
Artist.delete_all

artist1.save
artist2.save
artist3.save

album1 = Album.new('title' => 'Satellite of Love', 'genre' => 'pop rock', 'artist_id' => artist1.id)
album2 = Album.new('title' => 'IV', 'genre' => '70s rock', 'artist_id' => artist2.id)
album3 = Album.new('title' => 'Nirvana', 'genre' => 'grunge', 'artist_id' => artist3.id)

album1.save
album2.save
album3.save

# puts Artist.all
# puts Album.all

puts artist1.find_album
puts album1.find_artist
