import { connect } from 'react-redux';
import StoryDetail from './story_detail';
import { fetchStory, updateStory, destroyStory } from '../../actions/story_actions';

const selectStory = ({ stories }, storyId) => {
  const foundStory = stories[storyId];
  return foundStory || {};
};

const mapStateToProps = (state, { match }) => ({
  story: selectStory(state, parseInt(match.params.storyId)),
  currentUser: state.currentUser
});

const mapDispatchToProps = dispatch => ({
  fetchStory: id => dispatch(fetchStory(id)),
  updateStory: story => dispatch(updateStory(story)),
  destroyStory: id => dispatch(destroyStory(id))
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(StoryDetail);
