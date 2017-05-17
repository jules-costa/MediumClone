# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

demoUser = User.create({username: "Guest", password: "password", biography: "Thank you for checking out Ouija! This Medium clone was built in 10 days using Ruby on Rails, React, Redux, Javascript and HTML/CSS.", image_url: "assets/demo_user.png"})

# Stories

past1 = Story.create({title: 'Men Walk On Moon', body: 'this will be replaced', image_url: 'https://www.walldevil.com/wallpapers/a48/astronaut-moon-earth-planet-star-flag.jpg', read_time: '5 minutes', author: {username: 'John Wilford', image_url: 'http://ubique.americangeo.org/wp-content/uploads/2015/10/Wilford-John-210x300.jpg', biography: 'Author and award-winning journalist for The New York Times'}})
past2 = Story.create({title: 'Pluto Not a Planet, Astronomers Rule', body: 'this will be replaced', image_url: 'https://www.wired.com/wp-content/uploads/2017/02/Pluto-590674767-200x100-e1488222776706.jpg', read_time: '3 minutes', author: {username: 'Mason Inman', image_url: 'http://www.stlawu.edu/sites/default/files/news-images/Mason-Inman.jpg', biography: 'National Geographic News'}})

present1 = Story.create({title: 'Men Walk On Moon', body: 'this will be replaced', image_url: 'https://www.walldevil.com/wallpapers/a48/astronaut-moon-earth-planet-star-flag.jpg', read_time: '5 minutes', author: {username: 'John Wilford', image_url: 'http://ubique.americangeo.org/wp-content/uploads/2015/10/Wilford-John-210x300.jpg', biography: 'Author and award-winning journalist for The New York Times'}})
present2 = Story.create({title: 'Men Walk On Moon', body: 'this will be replaced', image_url: 'https://www.walldevil.com/wallpapers/a48/astronaut-moon-earth-planet-star-flag.jpg', read_time: '5 minutes', author: {username: 'John Wilford', image_url: 'http://ubique.americangeo.org/wp-content/uploads/2015/10/Wilford-John-210x300.jpg', biography: 'Author and award-winning journalist for The New York Times'}})

future1 = Story.create({title: 'Men Walk On Moon', body: 'this will be replaced', image_url: 'https://www.walldevil.com/wallpapers/a48/astronaut-moon-earth-planet-star-flag.jpg', read_time: '5 minutes', author: {username: 'John Wilford', image_url: 'http://ubique.americangeo.org/wp-content/uploads/2015/10/Wilford-John-210x300.jpg', biography: 'Author and award-winning journalist for The New York Times'}})
future2 = Story.create({title: 'Men Walk On Moon', body: 'this will be replaced', image_url: 'https://www.walldevil.com/wallpapers/a48/astronaut-moon-earth-planet-star-flag.jpg', read_time: '5 minutes', author: {username: 'John Wilford', image_url: 'http://ubique.americangeo.org/wp-content/uploads/2015/10/Wilford-John-210x300.jpg', biography: 'Author and award-winning journalist for The New York Times'}})
