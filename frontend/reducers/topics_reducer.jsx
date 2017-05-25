import { RECEIVE_TOPICS } from '../actions/topic_actions';
import merge from 'lodash/merge';

const defaultTopics = {};

const TopicsReducer = (state = defaultTopics, action) => {
  Object.freeze(state);
  switch (action.type) {
    case RECEIVE_TOPICS:
      return merge({}, action.topics);
    default:
      return state;
  }
};

export default TopicsReducer;
