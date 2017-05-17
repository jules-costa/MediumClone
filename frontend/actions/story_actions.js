import * as APIUtil from '../util/story_api_util';

export const RECEIVE_STORY = "RECEIVE_STORY";
export const RECEIVE_STORIES = "RECEIVE_STORIES";

export const receiveSingleStory = story => ({
  type: RECEIVE_STORY,
  story
});

export const receiveAllStories = stories => ({
  type: RECEIVE_STORIES,
  stories
});

export const createStory = story => dispatch => (
  APIUtil.createStory(story).then(newStory => dispatch(receiveSingleStory(newStory)))
);

export const fetchStories = topicId => dispatch => (
  APIUtil.fetchStories(topicId).then(stories => dispatch(receiveAllStories(stories)))
);

export const fetchStory = id => dispatch => (
  APIUtil.fetchStory(id).then(story => dispatch(receiveSingleStory(story)))
);

export const updateStory = story => dispatch => (
  APIUtil.updateStory(story).then(updatedStory => dispatch(receiveSingleStory(updatedStory)))
);

export const destroyStory = id => dispatch => (
  APIUtil.destroyStory(id).then(story => dispatch(receiveSingleStory(null)))
);
