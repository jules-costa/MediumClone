import { RECEIVE_STORY } from '../actions/story_actions';
import merge from 'lodash/merge';

const defaultStory = {
  id: null,
  title: null,
  body: null,
  image_url: null,
  read_time: null,
  author: {
    username: null,
    image_url: null,
    biography: null,
    followers: null
  },
  comments: {
    0: {

    }
  }
};

const StoryReducer = (state = defaultStory, action) => {
  Object.freeze(state);
  switch (action.type) {
    case RECEIVE_STORY:
      const newStory = {[action.story.id]: action.story};
      return merge({}, state, newStory);
    default:
      return state;
  }
};

export default StoryReducer;
