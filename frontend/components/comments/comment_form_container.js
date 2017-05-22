import { connect } from 'react-redux';
import CommentForm from './comment_form';
import { createComment } from '../../actions/comment_actions';
import { fetchStory } from '../../actions/story_actions';

const mapStateToProps = state => ({
  currentUser: state.currentUser,
  story: state.story,
  errors: state.errors
});

const mapDispatchToProps = (dispatch) => ({
  createComment: (comment, storyId) => dispatch(createComment(comment, storyId)),
  fetchStory: (id) => dispatch(fetchStory(id))
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(CommentForm);
