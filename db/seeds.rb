# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

demoUser = User.create({username: "Guest", password: "password", biography: "Thank you for checking out Ouija! This Medium clone was built in 10 days using Ruby on Rails, React, Redux, Javascript and HTML/CSS.", image_url: "assets/demo_user.png"})

# Stories
past1 = Story.create({title: 'Men Walk On Moon', body: 'this will be replacedthis will be replacedthis will be replacedthis will be replacedthis will be replacedthis will be replacedthis will be replacedthis will be replacedthis will be replacedthis will be replacedthis will be replaced', image_url: 'assets/still_cloud.jpeg', read_time: '5 minutes', author_id: 1, topic_id: 1})
past2 = Story.create({title: 'Pluto Not a Planet, Astronomers Rule', body: 'this will be replaced', image_url: 'soon', read_time: '3 minutes', author_id: 1, topic_id: 1})
present1 = Story.create({title: 'Theorists propose a new method to probe the beginning of the universe', body: 'this will be replaced', image_url: 'soon', read_time: '10 minutes', author_id: 1, topic_id: 1})
future1 = Story.create({title: 'Predicting 2017: A Look At Humanity\'s Future in Space', body: 'this will be replaced', image_url: 'soon', read_time: '5 minutes', author_id: 1, topic_id: 1})
future2 = Story.create({title: 'Predicting 2018: A Look At Humanity\'s Future in Space', body: 'this will be replaced', image_url: 'soon', read_time: '5 minutes', author_id: 1, topic_id: 1})
future3 = Story.create({title: 'Predicting 2019: A Look At Humanity\'s Future in Space', body: 'this will be replaced', image_url: 'soon', read_time: '5 minutes', author_id: 1, topic_id: 1})
future4 = Story.create({title: 'Predicting 2020: A Look At Humanity\'s Future in Space', body: 'this will be replaced', image_url: 'soon', read_time: '5 minutes', author_id: 1, topic_id: 1})
future5 = Story.create({title: 'Predicting 2021: A Look At Humanity\'s Future in Space', body: 'this will be replaced', image_url: 'soon', read_time: '5 minutes', author_id: 1, topic_id: 1})
future6 = Story.create({title: 'Predicting 2022: A Look At Humanity\'s Future in Space', body: 'this will be replaced', image_url: 'soon', read_time: '5 minutes', author_id: 1, topic_id: 1})
