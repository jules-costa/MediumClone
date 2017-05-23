import { RECEIVE_STORIES, RECEIVE_STORY } from '../actions/story_actions';
import merge from 'lodash/merge';

const defaultStories = {};

const StoriesReducer = (state = defaultStories, action) => {
  Object.freeze(state);
  switch (action.type) {
    case RECEIVE_STORIES:
      return merge({}, action.stories);
    case RECEIVE_STORY:
    if (action.story === null) {
      return merge({}, state, action.story);
    } else {
      const newStory = {[action.story.id]: action.story};
      return merge({}, state, newStory);
    }
    default:
      return state;
  }
};

export default StoriesReducer;
