require('pry')
require_relative('models/album')
require_relative('models/artist')

artist1 = Artist.new('name' => 'Lou Reed')
artist2 = Artist.new('name' => 'Led Zeppelin')
artist3 = Artist.new('name' => 'Nirvana')

Artist.delete_all

artist1.save
artist2.save
