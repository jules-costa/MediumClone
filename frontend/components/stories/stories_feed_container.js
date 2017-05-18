import { connect } from 'react-redux';
import StoriesFeed from './stories_feed';
import { fetchStories } from '../../actions/story_actions';
import values from 'lodash/values';


const mapStateToProps = (state) => ({
  stories: values(state.stories)
});

const mapDispatchToProps = dispatch => ({
  fetchStories: () => dispatch(fetchStories())
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(StoriesFeed);
