require_relative("../db/sql_runner.rb")
require_relative("./star")
require_relative("./movie")

class Casting

  attr_reader :id
  attr_accessor :movie_id, :star_id, :fee

  def initialize(options)
    @id = options['id'].to_i if options['id']
    @movie_id = options['movie_id']
    @star_id = options['star_id']
    @fee = options['fee'].to_i
  end

  def save()
    sql = "INSERT INTO castings
    (
      movie_id,
      star_id,
      fee
    )
    VALUES (
      $1, $2, $3
      ) RETURNING id"
    values = [@movie_id, @star_id, @fee]
    casting = SqlRunner.run(sql, values).first
    @id = casting['id'].to_i()
  end

end
