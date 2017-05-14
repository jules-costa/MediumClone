{
  currentUser: {
    id: 1,
    username: "sample_name",
    biography: "Born in NJ in 1992",
    image_url: "http://some_url.com"
  },
  forms: {
    signup: {errors: []},
    login: {errors: []},
    createStory: {errors: []},
    createComment: {errors: []}
  }
  stories: {
    1 {
      id: 1,
      title: "How to make cat toys from toilet paper rolls",
      body: "It's so fun, try it! Also this will be way longer IRL",
      image_url: "http://some_url.com",
      read_time: "5 minutes",
      author_id: 5
    },
    2 {
      id: 2,
      title: "How to make cat toys from anything really",
      body: "Cats won't like it anyway...",
      image_url: "http://some_url.com",
      read_time: "3 minutes",
      author_id: 4
    }
  },
  comments: {
    1 {
      id: 1,
      body: "OMG thanks for sharing!",
      author_id: 5,
      story_id: 3
    },
    2 {
      id: 2,
      body: "This is a sad story",
      author_id: 1,
      story_id: 2
    }
  },
  storyLikes: {
    1 {
      id: 1,
      user_id: 3,
      story_id: 4
    },
    2 {
      id: 2,
      user_id: 1,
      story_id: 5
    }
  },
  writerFollows: {
    1 {
      id: 1,
      follower_id: 2,
      followee_id: 3
    },
    2 {
      id: 2,
      follower_id: 3,
      followee_id: 2
    }
  }
}
