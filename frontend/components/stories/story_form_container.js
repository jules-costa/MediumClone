import { connect } from 'react-redux';
import StoryForm from './story_form';
import { createStory } from '../../actions/story_actions';

const mapStateToProps = state => ({
  currentUser: state.currentUser
});

const mapDispatchToProps = dispatch => ({
  createStory: story => dispatch(createStory(story))
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(StoryForm);
