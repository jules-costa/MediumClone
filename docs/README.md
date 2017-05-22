# Ouija

## Minimal Viable Product:

Ouija is a web application inspired by Medium built using Ruby on Rails and React/Redux. By the end of week 9, this application will, at a minimum, satisfy the following criteria with smooth, bug-free navigation, adequate seed data and sufficient CSS styling:

* Hosting on Heroku
* New account creation, login, and guest/demo login
* Feed of stories
* Individual story
* Comments and likes on stories
* User follows and followers
* Production README, replacing this README

## Design Docs:

* [View Wireframes](wireframes/all_frames.md)
* [API endpoints](api_endpoints.md)
* [React Components](component_hierarchy.md)
* [Sample State](sample_state.md)
* [DB Schema](schema.md)

## Implementation Timeline

#### Phase 1: Backend setup and Front End User Authentication (2 days)

Objective: Functioning rails project with front-end authentication. Demo login functionality and modals for logging in and signing up.

#### Phase 2: Stories Model, API, and components (2 days)

Objective: Stories can be created, read, updated and destroyed through the API. Adequately seeded.

#### Phase 3: Comments (1 day)

Objective: Comments belong to Stories. Comments can be created, read, edited and destroyed through the API. Adequately seeded.

#### Phase 4: Follows & Feed (2 days)

Objective: Following and Follower counts are accurate and displayed on User profile. Feed is conditional based on topic_id coming through in params. Feeds are styled using masonry.

#### Phase 5: Likes (1 day)

Objective: Stories can be liked by multiple users. Users can follow other users, and have followers. Users can like/unlike, follow/unfollow. Adequately seeded.

#### Phase 6: User Profile (1 day)

Objective: User has a profile page that can be read and edited. Adequately seeded.

#### Phase 7: Topics

Objective: Generate 3 topics that contain relevant stories, and link to topic pages from nav bar. Adequately seeded.
