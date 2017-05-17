# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

demoUser = User.create({username: "Guest", password: "password", biography: "Thank you for checking out Ouija! This Medium clone was built in 10 days using Ruby on Rails, React, Redux, Javascript and HTML/CSS.", image_url: "assets/demo_user.png"})
