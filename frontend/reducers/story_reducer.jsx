import { RECEIVE_STORY } from '../actions/story_actions';
import merge from 'lodash/merge';

const defaultStory = {};

const StoryReducer = (state = defaultStory, action) => {
  Object.freeze(state);
  switch (action.type) {
    case RECEIVE_STORY:
      return action.story;
    default:
      return state;
  }
};

export default StoryReducer;
