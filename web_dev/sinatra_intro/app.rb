# require gems
require 'sinatra'
require 'sqlite3'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# write a basic GET route
# add a query parameter
# GET /
get '/' do
  "#{params[:name]} is #{params[:age]} years old."
end

# write a GET route with
# route parameters
get '/about/:person' do
  person = params[:person]
  "#{person} is a programmer, and #{person} is learning Sinatra."
end

get '/:person_1/loves/:person_2' do
  "#{params[:person_1]} loves #{params[:person_2]}"
end

# write a GET route that retrieves
# all student data
get '/students' do
  students = db.execute("SELECT * FROM students")
  response = ""
  students.each do |student|
    response << "ID: #{student['id']}<br>"
    response << "Name: #{student['name']}<br>"
    response << "Age: #{student['age']}<br>"
    response << "Campus: #{student['campus']}<br><br>"
    response << "Address: #{student['address']}<br>"
  end
  response
end

# write a GET route that retrieves
# a particular student

get '/students/:id' do
  student = db.execute("SELECT * FROM students WHERE id=?", [params[:id]])
  student.to_s
end

get '/contact/' do
  "1445 lakeside drive, Oakland,CA 94610"
end

get '/great_job/' do
  name = params[:name]
  if name
  "Good job #{name}!"
  else
  "Good job!"
  end

end

get '/:first_int/plus/:second_int' do
  f_int = params[:first_int]
  s_int = params[:second_int]

  "#{f_int} plus #{s_int} equals  #{f_int.to_i + s_int.to_i}"
end

get '/students/:campus' do

  student = db.execute("SELECT NAME FROM students WHERE campus=?",[params[:campus]])[0]
  student.to_s

end