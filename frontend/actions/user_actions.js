import * as UserAPIUtil from '../util/user_api_util';

export const RECEIVE_USER_PROFILE = "RECEIVE_USER_PROFILE";
export const RECEIVE_ERRORS = "RECEIVE_ERRORS";
export const CLEAR_ERRORS = "CLEAR_ERRORS";

export const receiveUserProfile = user => ({
  type: RECEIVE_USER_PROFILE,
  user
});

export const receiveErrors = errors => ({
  type: RECEIVE_ERRORS,
  errors
});
export const clearErrors = () => ({
  type: CLEAR_ERRORS
});

export const fetchProfile = id => dispatch => (
  UserAPIUtil.fetchProfile(id).then(profile => dispatch(receiveUserProfile(profile)))
);

export const updateProfile = user => dispatch => (
  UserAPIUtil.updateProfile(user).then(updatedProfile => {
    dispatch(receiveUserProfile(updatedProfile));
    dispatch(clearErrors());
  }, err => (
    dispatch(receiveErrors(err.responseJSON))
  ))
);
