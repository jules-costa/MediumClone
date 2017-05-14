# API Endpoints

## HTML API

### Root
  * GET /

## JSON API

### Users
  * POST /api/users
  * PATCH /api/users

### Session
  * POST /api/session
  * DELETE /api/session

### Stories
  * GET /api/stories/
  * GET /api/stories/:id
  * POST /api/stories
  * PATCH /api/stories/:id
  * DELETE /api/stories/:id

### Comments
  * GET /api/stories/:story_id/comments
  * POST /api/stories/:story_id/comments
  * PATCH /api/comments/:id
  * DELETE /api/comments/:id

### Topics
  * GET /api/topics
  * GET /api/topics/:id
  * PATCH /api/topics/:id

### Likes
  * GET /api/likes
  * POST /api/likes/:user_id
  * DELETE /api/likes/:user_id

### Followings
  * GET /api/followings/:follower_id
  * POST /api/followings/:follower_id
  * DELETE /api/followings/:follower_id
