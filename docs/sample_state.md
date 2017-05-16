{
  currentUser: {
    id: 1,
    username: "sample_name",
    biography: "Born in NJ in 1992",
    image_url: "http://some_url.com",
    likes: {story_id, story_id...},
    <!-- who this user follows -->
    follows: {user_id, user_id...}
  },
  userProfile: {
    id:
    followers: 0,
    following: 0,
    username: "",
    image_url: "",
    biography: ""
  }
  errors: {
    auth: [],
    createStory: [],
    createComment: []
  }
  stories: {
    1: {
      id: 1,
      title: "How to make cat toys from toilet paper rolls",
      body_peek: "It's so fun, try it!...",
      image_url: "http://some_url.com",
      read_time: "5 minutes",
      author: {
        name: "",
        image_url: "",
        short_bio: ""
      }
    },
    2: {
      id: 2,
      title: "How to make cat toys from anything really",
      body_peek: "Cats won't like it anyway...",
      image_url: "http://some_url.com",
      read_time: "3 minutes",
      author: {
        name: "",
        image_url: "",
        short_bio: ""
      }
    }
  },
  story: {
    1: {
      id: 1,
      title: "",
      body: "",
      image_url: "",
      read_time: "",
      author {
        name: "",
        image_url: "",
        biography: "",
        followers: 0
      }
      comments: {
        1: {
          id: 1,
          body: "OMG thanks for sharing!",
          author: {
            name: "",
            image_url: "",
          }
        },
        2: {
          id: 2,
          body: "This is a sad story",
          author: {
            name: "",
            image_url: "",
          }
        }
      }
    }
  },
  topics: {
    1: {
      id: 1,
      title: "Something",
    },
    2: {
      id: 2,
      title: "Something else",
    }
  }
}
