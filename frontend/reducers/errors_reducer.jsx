import { RECEIVE_SESSION_ERRORS } from '../actions/session_actions';
import merge from 'lodash/merge';

const noErrors = {
  auth: []
};

const ErrorsReducer = (state = noErrors, action) => {
  Object.freeze(state);
  switch (action.type) {
    case RECEIVE_SESSION_ERRORS:
      const errors = action.errors;
      return merge({}, noErrors, {errors});
    default:
      return state;
  }
};

export default ErrorsReducer;
