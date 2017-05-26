import { connect } from 'react-redux';
import UpdateStory from './update_story';
import { updateStory } from '../../actions/story_actions';

const mapStateToProps = state => ({
  story: state.story,
  currentUser: state.currentUser,
  errors: state.errors
});

const mapDispatchToProps = dispatch => ({
  updateStory: (story) => dispatch(updateStory(story))
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(UpdateStory);
