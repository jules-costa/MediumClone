import * as APIUtil from '../util/comment_api_util';

export const RECEIVE_COMMENT = "RECEIVE_COMMENT";
export const RECEIVE_ERRORS = "RECEIVE_ERRORS";
export const CLEAR_ERRORS = "CLEAR_ERRORS";

export const receiveComment = comment => ({
  type: RECEIVE_COMMENT,
  comment
});
export const receiveErrors = errors => ({
  type: RECEIVE_ERRORS,
  errors
});
export const clearErrors = () => ({
  type: CLEAR_ERRORS
});

export const createComment = comment => dispatch => (
  APIUtil.createComment(comment).then(newComment => {
    dispatch(receiveComment(newComment));
    return newComment;
  }).fail(err => dispatch(receiveErrors(err.responseJSON)))
);

export const updateComment = comment => dispatch => (
  APIUtil.updateComment(comment).then(updatedComment => {
    dispatch(receiveComment(updatedComment));
    dispatch(clearErrors());
  }, err => (
    dispatch(receiveErrors(err.responseJSON))
  ))
);

export const destroyStory = id => dispatch => (
  APIUtil.destroyComment(id).then(comment => dispatch(receiveComment(null)))
);
