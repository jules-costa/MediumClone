import * as APIUtil from '../util/story_api_util';
import { history } from 'react-router-dom';

export const RECEIVE_STORY = "RECEIVE_STORY";
export const RECEIVE_STORIES = "RECEIVE_STORIES";
export const RECEIVE_ERRORS = "RECEIVE_ERRORS";
export const CLEAR_ERRORS = "CLEAR_ERRORS";

export const receiveSingleStory = story => ({
  type: RECEIVE_STORY,
  story
});

export const receiveAllStories = stories => ({
  type: RECEIVE_STORIES,
  stories
});

export const receiveErrors = errors => ({
  type: RECEIVE_ERRORS,
  errors
});
export const clearErrors = () => ({
  type: CLEAR_ERRORS
});

// export const redirectToStoryShow = (id) => (
//   this.props.history.push(`stories/${id}`)
// );
//
// export const createStory = story => dispatch => (
//   APIUtil.createStory(story)
//     .then(newStory => {
//       dispatch(receiveSingleStory(newStory));
//       dispatch(clearErrors());
//       dispatch(redirectToStoryShow(newStory.id));
//   }, err => (
//     dispatch(receiveErrors(err.responseJSON))
//   ))
// );

export const createStory = story => dispatch => (
  APIUtil.createStory(story).then(story => {
    dispatch(receiveSingleStory(story));
    return story;
  }).fail(err => dispatch(receiveErrors(err.responseJSON)))
);

export const fetchStories = topicId => dispatch => (
  APIUtil.fetchStories(topicId).then(stories => dispatch(receiveAllStories(stories)))
);

export const fetchStory = id => dispatch => (
  APIUtil.fetchStory(id).then(story => dispatch(receiveSingleStory(story)))
);

export const updateStory = story => dispatch => (
  APIUtil.updateStory(story).then(updatedStory => {
    dispatch(receiveSingleStory(updatedStory));
    dispatch(clearErrors());
  }, err => (
    dispatch(receiveErrors(err.responseJSON))
  ))
);

export const destroyStory = id => dispatch => (
  APIUtil.destroyStory(id).then(story => dispatch(receiveSingleStory(null)))
);
