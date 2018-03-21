require('pg')
require_relative('../db/sql_runner')

class Album

  attr_reader :id, :title, :genre, :artist_id
  def initialize(options)
    @id = options['id'].to_i if options['id']
    @title = options['title']
    @genre = options['genre']
    @artist_id = options['id'].to_i if options['id']
  end

  def save
    sql = "INSERT INTO albums (
    title, genre, artist_id
    )
    VALUES
    (
    $1, $2, $3
    )
    RETURNING id"

    values = [@title, @genre, @artist_id]
    result = SqlRunner.run(sql, values)
    @id = result[0]['id'].to_i

  end

end
