import { connect } from 'react-redux';
import StoryDetail from './story_detail';
import { fetchStory, updateStory, destroyStory } from '../../actions/story_actions';

const mapStateToProps = state => ({
  story: state.story
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
