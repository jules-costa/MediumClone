import * as APIUtil from '../util/story_api_util';
import * as CommentAPIUtil from '../util/comment_api_util';
import * as LikeAPIUtil from '../util/like_api_util';

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

export const createStory = story => dispatch => (
  APIUtil.createStory(story).then(newStory => {
    dispatch(receiveSingleStory(newStory));
    dispatch(clearErrors());
    return newStory;
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

export const createComment = (comment, storyId) => dispatch => (
  CommentAPIUtil.createComment(comment, storyId).then(story => {
    dispatch(receiveSingleStory(story));
    dispatch(clearErrors());
  }).fail(err => dispatch(receiveErrors(err.responseJSON)))
);

export const updateComment = (comment, storyId) => dispatch => (
  CommentAPIUtil.updateComment(comment).then(story => {
    dispatch(receiveSingleStory(story));
    dispatch(clearErrors());
  }, err => (
    dispatch(receiveErrors(err.responseJSON))
  ))
);

export const destroyComment = (id, storyId) => dispatch => (
  CommentAPIUtil.destroyComment(id).then(story => dispatch(receiveSingleStory(story)))
);

export const createLike = like => dispatch => (
  LikeAPIUtil.createLike(like).then(story => dispatch(receiveSingleStory(story)))
);

export const destroyLike = storyId => dispatch => (
  LikeAPIUtil.destroyLike(storyId).then(story => dispatch(receiveSingleStory(story)))
);
