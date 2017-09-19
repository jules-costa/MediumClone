import React from 'react';
import { connect } from 'react-redux';
import { fetchStories } from '../../actions/story_actions';
import StoriesFeed from '../stories/stories_feed';

const mapStateToProps = state => ({
  stories: state.stories
});

const mapDispatchToProps = dispatch => ({
  fetchStories: (topic) => dispatch(fetchStories(topic))
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(StoriesFeed);
