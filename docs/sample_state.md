{
  currentUser: {
    id: 1,
    username: "sample_name",
    biography: "Born in NJ in 1992",
    image_url:"",
    follows: boolean
  },
  userProfile: {
    id:
    followers: 0,
    following: 0,
    username: "",
    image_url: "",
    biography: ""
  }
  errors: [],
  stories: {
    1: {
      id: 1,
      title: "How to make cat toys from toilet paper rolls",
      body_peek: "It's so fun, try it!...",
      image_url: ""
      read_time: "5 minutes",
      topic_id: 1,
      author: {
        username: "",
        image_url: "",
      }
    },
    2: {
      id: 2,
      title: "How to make cat toys from anything really",
      body_peek: "Cats won't like it anyway...",
      image_url: "",
      read_time: "3 minutes",
      topic_id: 1,
      author: {
        username: "",
        image_url: "",
      }
    }
  },
story: {
    id: 1,
    title: "",
    body: "",
    image_url: "",
    read_time: "",
    topic_id: 1,
    likes: 0,
    liked: boolean,
    author {
      username: "",
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
