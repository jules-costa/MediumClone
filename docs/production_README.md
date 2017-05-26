# Ouija

[Ouija live](http://ouija-medium.herokuapp.com/#/ "Ouija's Homepage")

Ouija is a full-stack web application inspired by Medium, a story sharing and writing platform. Ouija was built using Ruby on Rails for the backend, a PostgresSQL database, and Redux as its frontend architectural framework. Other implemented technologies include Javascript, React.js, and HTML/CSS.

## Features & Implementation

### Feed

The site's landing page is a feed of all stories. Stories are stored in one table in the database that has columns: `title`, `description`, `body`, `author_id`, `topic_id`, `image_url`, `read_time`, and `created_at` / `updated_at`. Depending on the view, the `body` gets sent to the frontend component in full (story show page) or as a truncated version (story feed page). The `read_time` is calculated in the controller by finding the total word count and dividing it by 200 (average words-per-minute read in the U.S.). The user may filter stories by clicking on one of three topics, which will trigger a API request to retrieve only stories with that specific `topic_id`. If a user clicks on a story, they'll be redirected to the login page where they can login or signup.

Users may write stories and upload an image to post along with their new story. The custom-styled upload widget links to a Cloudinary account, by which all images on the site are stored and retrieved. If no image is added, the controller will append a default image prior to sending back the a response. Once the story is published, the user is redirected to their new story's show page, and they can also see their contribution in the main story feed. Clicking the Ouija logo from anywhere in the site redirects the user to the main story feed.


### Users

I utilized BCrypt's password salting and hashing capabilities to ensure users' password security. The users table stores: `username`, `password_digest`, `session_token`, `biography`, and `image_url`. The user's `image_url` is defaulted in the database, and can be edited once logged-in. The original password is never stored, and the `session_token` gives the logged-in user permission to navigate around the site. I created "Auth" and "Protected" routes using the React router to permit only authenticated users to interact with the site.

Once in session, the user may click to "Edit" their information from their own profile page. This action turns the page into an interactive form with pre-filled fields. Using the same Cloudinary widget, the user may add a profile picture, which instantaneously updates all components that render the user's image (including the navigation bar, comment form, and story form).


### Stories, Comments, Likes & Follows

The user may click on a particular story in the feed to view it in its entirety. They can click the heart to like or unlike it and scroll to the bottom of the page to read and post comments. Stories can be edited or deleted by the original author. Comments can also be destroyed by the original author.

A user may click on an author's name or image (anywhere in the site) and be taken to that author's profile page. The user can see how many followers/following the author has, and click to follow or unfollow them from there. The user may also toggle between two miniature story feeds: "Profile" contains all stories that the author has liked, and "Recommends" lists all stories written by people that that particular author follows. The feeds are curated by querying the "Likes", "Follows" and "Stories" database tables via the respective controllers, and sending only applicable stories back to the React component. These mini-feeds update instantaneously when the user alters their likes and/or follows.


## Plans for the Future

I will keep revisiting this codebase to refactor and optimize it further. I will be adding a search bar that filters results, as well as a "Replies" component that allows users to start threads on comments. My goal is to use this web application to build out a desktop and mobile application. This codebase is a great jumping off point for learning and implementing new technologies, and I definitely plan on doing both of those things!
