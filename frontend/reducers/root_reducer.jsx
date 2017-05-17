import SessionReducer from './session_reducer';
import ErrorsReducer from './errors_reducer';
import StoriesReducer from './stories_reducer';
import StoryReducer from './story_reducer';

import { combineReducers } from 'redux';

const RootReducer = combineReducers({
  currentUser: SessionReducer,
  errors: ErrorsReducer,
  stories: StoriesReducer,
  story: StoryReducer
});

export default RootReducer;
