User.destroy_all
Question.destroy_all

User.create!(
  first_name: 'Admin',
  last_name: 'Admininstrator',
  email: 'admin@admin.com',
  role: 'admin',
  password: 'password',
  password_confirmation: 'password'
)

User.create!(
  first_name: 'Hari',
  last_name: 'Mohanraj',
  email: 'hari@hari.com',
  role: 'instructor',
  password: 'password',
  password_confirmation: 'password'
)

User.create!(
  first_name: 'Jimbob',
  last_name: 'Junior',
  email: 'jim@bob.com',
  role: 'student',
  password: 'password',
  password_confirmation: 'password'
)

Question.create!(
  body: 'What is "this" in JavaScript?'
)

Question.create!(
  body: 'What is the meaning of life?'
)

Question.create!(
  body: 'Why are my boots sticky?'
)

Question.create!(
  body: 'What is the difference between map and each in Ruby?'
)

Question.create!(
  body: 'Can I use a Rails app to control a spaceship to fly to the moon?'
)

Question.create!(
  body: 'How does Rails know where to find my model file without me telling it anything?'
)
