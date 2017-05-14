## Component Hierarchy

### AuthFormContainer

* AuthForm
* Errors

### HomeContainer

* NavBar

* StoriesFeed
  * StoriesFeedItem

### TopicContainer

* TopicsIndex
  * TopicIndexItem

### StoryContainer

* StoryNavBar

* StoryDetail
* AuthorDetail

* RelatedStories
  * RelatedStory

* CommentContainer
  * InputForm
  * Errors
  * CommentFeed
    * CommentFeedItem

### StoryInputContainer

* InputForm
* Errors

* PublishDropdown

### UserProfileContainer

* UserDetail

* FollowsContainer
  * FollowData

* EditForm
* Errors

### SearchContainer

* SearchBar
* AutoSearchResults


| Routes       |                      |
|--------------|----------------------|
| path         | component            |
| /sign-in     | AuthFormContainer    |
| /sign-up     | AuthFormContainer    |
| /home        | HomeContainer        |
| /topics/:id  | TopicIndexItem       |
| /stories/:id | StoryContainer       |
| /new-story   | StoryInputContainer  |
| /users/:id   | UserProfileContainer |
| /search      | SearchContainer      |
