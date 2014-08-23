# first user
user = User.find_or_initialize_by(email: 'admin@example.com')
user.name = 'Admin'
user.last_name = 'Admin'
user.password = 'fristadmin'
user.save!

p 'saved!'