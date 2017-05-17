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
