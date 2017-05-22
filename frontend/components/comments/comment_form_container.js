import { connect } from 'react-redux';
import CommentForm from './comment_form';
import { fetchStory, createComment } from '../../actions/story_actions';

const mapStateToProps = state => ({
  currentUser: state.currentUser,
  story: state.story,
  errors: state.errors
});

const mapDispatchToProps = (dispatch) => ({
  createComment: (comment, storyId) => dispatch(createComment(comment, storyId)),
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(CommentForm);
