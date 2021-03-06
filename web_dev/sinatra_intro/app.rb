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
  end
  response
end

# write a GET route that retrieves
# a particular student

get '/students/:id' do
  student = db.execute("SELECT * FROM students WHERE id=?", [params[:id]])[0]
  student.to_s
end


##############################################
# 9.4 Building a Web Application in Ruby
# by Forrest Wortham
# RELEASE 0

# Release0.1 - update with a "/contact" route that displays an address (you can make up the address).

get '/contact/:address' do
  address = params[:address]
  "The address is at #{address}"
end

# URL:
# http://localhost:4567/contact/1234%20Road%20St.%20New%20York,%20NY

###############################################

# Release0.2 - update with a /great_job route that can take a person's name as a query parameter (not a route parameter) and say "Good job, [person's name]!". If the query parameter is not present, the route simply says "Good job!"


get '/great_job' do
  name = params[:name]
  if name
  "Good job, #{params[:name]}!"
  else
    "Good job!"
  end
end

# URL:
# http://localhost:4567/great_job?name=Forrest
###############################################

# # Release0.3 - update with aroute that uses route parameters to add two numbers and respond with the result. The data types are tricky here -- when will the data need to be (or arrive as) a string?

# get '/sum' do
#   "Hello World"
# end

get '/sum/:num1/:num2' do
  num1 = params[:num1].to_i
  num2 = params[:num2].to_i
  sum = num1 + num2
  "#{num1} plus #{num2} equals #{sum}"
end
#URL:
# http://localhost:4567/sum/10/9
##############################################

# Release0.4 - Optional Bonus: Make a route that allows the user to search the database in some way -- maybe for students who have a certain first name, or some other attribute. If you like, you can simply modify the home page to take a query parameter, and filter the students displayed if a query parameter is present.

get '/first_name/:name' do
  first_name = db.execute("SELECT * FROM students WHERE name=?", [params[:name]])
  # Problem w/ name = params[:name].to_s
  name = params[:name].to_s
  dbname = params[:name].splice(" ")
  prefix = dbname[0]
  first_name = dbname[1]
  last_name = dbname[2]


full_name = ""
  students.each do |student|
    full_name << "prefix: #{prefix}<br>"
    full_name << "First Name: #{first_name}<br>"
    full_name << "Last Name: #{last_name}<br><br>"
  end
  full_name
end

#URL:
#
##############################################
# RELEASE 1

# Release1.1) Is Sinatra the only web app library in Ruby? What are some others?

# ANSWR: Ruby on Rails (RoR), Merb, Nitro, and Camping are other web app libraries that can be used with Ruby.

# Release1.2) Are SQLite and the sqlite3 gem your only options for using a database with Sinatra? What are some others?

# ANSWR: MySQL, PostgreSQL, MongoDB, and Heroku.

# Release1.3) What is meant by the term web stack?

# ANSWR: Web Stack - the minimum collection of software need for web developement, which typically include:
# Operating System (OS)
# Programming Language (Ruby)
# Database Software (SQL)
# Web Server (Sinatra)
