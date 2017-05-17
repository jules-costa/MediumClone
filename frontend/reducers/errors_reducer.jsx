import { RECEIVE_ERRORS, CLEAR_ERRORS } from '../actions/session_actions';
import merge from 'lodash/merge';

const errors = [];

const ErrorsReducer = (state = errors, action) => {
  Object.freeze(state);
  switch (action.type) {
    case RECEIVE_ERRORS:
      return action.errors;
    case CLEAR_ERRORS:
      return errors;
    default:
      return state;
  }
};

export default ErrorsReducer;
