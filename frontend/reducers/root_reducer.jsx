import SessionReducer from './session_reducer';
import ErrorsReducer from './errors_reducer';
import { combineReducers } from 'redux';

const RootReducer = combineReducers({
  currentUser: SessionReducer,
  errors: ErrorsReducer
});

export default RootReducer;
