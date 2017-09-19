import { connect } from 'react-redux';
import { fetchStories } from '../../actions/story_actions';
import { fetchTopics } from '../../actions/topic_actions';
import TopicsList from './topics_list';
import values from 'lodash/values';

const mapStateToProps = state => ({
  topics: values(state.topics),
  stories: state.stories
});

const mapDispatchToProps = dispatch => ({
  fetchStories: (topic) => dispatch(fetchStories(topic)),
  fetchTopics: () => dispatch(fetchTopics())
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(TopicsList);
