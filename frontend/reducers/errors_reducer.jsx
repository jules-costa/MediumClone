import { RECEIVE_ERRORS, CLEAR_ERRORS } from '../actions/session_actions';
import merge from 'lodash/merge';

const noErrors = [];

const ErrorsReducer = (state = noErrors, action) => {
  Object.freeze(state);
  switch (action.type) {
    case RECEIVE_ERRORS:
      return action.errors;
    case CLEAR_ERRORS:
      return noErrors;
    default:
      return state;
  }
};

export default ErrorsReducer;
