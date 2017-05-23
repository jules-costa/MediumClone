# API Endpoints

## HTML API

### Root
  * GET /

## JSON API

### Users
  * POST /api/users

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
  * POST /api/stories/:story_id/comments
  * PATCH /api/comments/:id
  * DELETE /api/comments/:id

### Topics
  * GET /api/topics

### Likes
  * POST /api/likes/
  * DELETE /api/likes/:user_id

### Follows
  * POST /api/follows/
  * DELETE /api/follows/:follower_id
