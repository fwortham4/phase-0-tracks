# 8.5 Combining SQL and Ruby
# by Forrest Wortham

################ Pseudo Code #################
# 1.) Requires applications sqlite3 and faker.
# 2.) Create a database with sqlite3, called db.
# 3.) Create a table inside of our new database, called create_table_cmd. Execute
# 4.) (Commented Out) Add a test voter to the database.
# 5.) Define a method that inserts/records a vote into the database.
# 6.) Driver Code iterates through the method 10 times.
# 7.) Prints out class of votes and the results.
###############################################


################### Gems ######################
require 'sqlite3'
require 'faker'
###############################################

################## Database ###################
# create SQLite3 database
db = SQLite3::Database.new("votes.db")
# db.results_as_hash = true

# String Delimiters
create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS votes(
    id INTEGER PRIMARY KEY,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    hillary BOOLEAN,
    bernie BOOLEAN,
    donald BOOLEAN,
  )
SQL

# create a votes table (if it's not there already)
db.execute(create_table_cmd)

# add a test voter
# db.execute("INSERT INTO votes (first_name, last_name, hillary, bernie, donald) VALUES ('John', 'Doe', true, false, false)")
###############################################

################### Method ####################
# adds voters

def voting(db, first_name, last_name, hillary, bernie, donald)
  db.execute("INSERT INTO votes (first_name, last_name, hillary, bernie, donald) VALUES (?, ?, ?, ?, ?)", [first_name, last_name, hillary, bernie, donald])
end


################ Driver Code #################
10.times do
  voting(db, Faker::Name.first_name, Faker::Name.last_name, false, false, false)
end

puts votes.class
p votes
###############################################