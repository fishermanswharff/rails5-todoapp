puts 'Truncating tables'
ActiveRecord::Base.establish_connection
ActiveRecord::Base.connection.tables.each do |table|
  next if table == 'schema_migrations'
  ActiveRecord::Base.connection.execute("TRUNCATE #{table} CASCADE")
  puts "truncated #{table} successfully"
end
puts "\n"

puts "creating lists:\n———————————————————————"
groceries = List.find_or_create_by!(name: 'Groceries')
target = List.find_or_create_by!(name: 'Target')
chores = List.find_or_create_by!(name: 'Chores')
capeweekend = List.find_or_create_by!(name: 'Cape Weekend')
List.all.each do |list|
  puts "created #{list.name}"
end
puts "\n"

puts "creating todos:\n———————————————————————"
groceries.todos << Todo.create!([
  {name: 'Cheddar', completed: false, list: groceries},
  {name: 'Meunster', completed: false, list: groceries},
  {name: 'Bacon', completed: false, list: groceries}])
target.todos << Todo.create!([
  {name: 'Mouthwash', completed: false, list: target},
  {name: 'Face Lotion', completed: false, list: target},
  {name: 'Laundry Detergent', completed: false, list: target},
  {name: 'Fabric Softener', completed: false, list: target},
  {name: 'Toothbrush Heads', completed: false, list: target},
  {name: 'Jenna Deodorant', completed: false, list: target},
  {name: 'Pads', completed: false, list: target},
  {name: 'Kleenex', completed: false, list: target},
  {name: 'Bar Soap', completed: false, list: target}
])
chores.todos << Todo.create!([
  {name: 'rollover IRAs from c4 -> EverQuote', completed: false, list: chores},
  {name: 'Clean Kitchen', completed: false, list: chores},
  {name: 'Target shopping', completed: false, list: chores},
  {name: 'Backup old computers', completed: false, list: chores}
])

Todo.all.each do |todo|
  puts "created #{todo.name} which belongs to #{todo.list.name}"
end
puts "\n"

puts "creating notes:\n———————————————————————"
cheddar_notes = Note.create(body: '<p>It’s gotta be the nice cheddar, comes wrapped in black wax, 10-year aged cheddar</p>', todo: Todo.find_by(name: 'Cheddar'))
Note.all.each do |note|
  puts "created #{note} which belongs to #{note.todo.name}"
end
puts "\n"

puts "Creating users:\n———————————————————————"
jason = User.create!(username: 'fishermanswharff',firstname: 'Jason', lastname: 'Wharff', email: 'fishermanswharff@mac.com', password: 'Rolla@1878', password_confirmation: 'Rolla@1878')
jenna = User.create!(username: 'ndpndntjn',firstname: 'Jenna', lastname: 'Wharff', email: 'jennawharff@me.com', password: 'JingleBe1l', password_confirmation: 'JingleBe1l')
chris = User.create!(username: 'spencech',firstname: 'Chris', lastname: 'Spence', email: 'spencech@gmail.com', password: 'password', password_confirmation: 'password')
andrea = User.create!(username: 'andreaspence',firstname: 'Andrea', lastname: 'Spence', email: 'aspence22@gmail.com', password: 'password', password_confirmation: 'password')
User.all.each do |user|
  puts "Created #{user.username}"
end
