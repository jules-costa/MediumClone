import { RECEIVE_STORIES, RECEIVE_STORY } from '../actions/story_actions';
import merge from 'lodash/merge';

const defaultStories = {
  0: {
    id: null,
    title: null,
    body: null,
    image_url: null,
    read_time: null,
    author: {
      username: null,
      image_url: null,
      biography: null
    }
  }
};

const StoriesReducer = (state = defaultStories, action) => {
  Object.freeze(state);
  switch (action.type) {
    case RECEIVE_STORIES:

    case RECEIVE_STORY:

    default:
      return state;
  }
};

export default StoriesReducer;
