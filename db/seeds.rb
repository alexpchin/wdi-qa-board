User.destroy_all
Question.destroy_all

admin = User.create!(
  first_name: 'Admin',
  last_name: 'Admininstrator',
  email: 'admin@admin.com',
  role: 'admin',
  password: 'password',
  password_confirmation: 'password'
)

instructor = User.create!(
  first_name: 'Hari',
  last_name: 'Mohanraj',
  email: 'hari@hari.com',
  role: 'instructor',
  password: 'password',
  password_confirmation: 'password'
)

student1 = User.create!(
  first_name: 'Jimbob',
  last_name: 'Junior',
  email: 'jim@bob.com',
  role: 'student',
  password: 'password',
  password_confirmation: 'password'
)

student2 = User.create!(
  first_name: 'Jane',
  last_name: 'Lilly',
  email: 'jane@lilly.com',
  role: 'student',
  password: 'password',
  password_confirmation: 'password'
)

Question.create!(
  body: 'What is "this" in JavaScript?',
  user: student1
)

Question.create!(
  body: 'What is the meaning of life?',
  user: student2
)

Question.create!(
  body: 'Why are my boots sticky?',
  user: student1
)

Question.create!(
  body: 'What is the difference between map and each in Ruby?',
  user: student1
)

Question.create!(
  body: 'Can I use a Rails app to control a spaceship to fly to the moon?',
  user: student2
)

Question.create!(
  body: 'How does Rails know where to find my model file without me telling it anything?',
  user: student2
)
