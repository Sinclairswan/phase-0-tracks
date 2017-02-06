#require gem
require 'sqlite3'


db = SQLite3::Database.new("horror.db")
db.results_as_hash = true
create_movie_table = <<-SQL
  CREATE TABLE IF NOT EXISTS movies(
    id INTEGER PRIMARY KEY,
    title VARCHAR(255),
    director VARCHAR(255),
    release_date INT,
    trailer_link VARCHAR(255),
    platform_id INT,
    FOREIGN KEY (platform_id) REFERENCES platforms(id)
  );

 SQL

 create_platforms_table = <<-SQL
   CREATE TABLE IF NOT EXISTS platform(
     id INTEGER PRIMARY KEY,
     platform VARCHAR(255)
     );
 SQL

 db.execute(create_movie_table)
 db.execute(create_platforms_table)

 movies = db.execute("SELECT * FROM movies")
 puts movies.class
 movies.each do |movie|
 	puts "#{movie['title']} was directed by #{movie['director']} and was released in #{movie['release_date']}"
 end

 #test data
 #db.execute(<<-SQL  
 #	INSERT INTO movies (title, director, release_date, trailer_link, platform_id) 
 #	VALUES ("Aliens", "Ridely Scott", 1986, "www.youtube.com/watch?v=XKSQmYUaIyE", 2);
 #SQL
 #)