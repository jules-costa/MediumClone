import { connect } from 'react-redux';
import Comments from './comments';
import { destroyComment, updateComment } from '../../actions/story_actions';

const mapStateToProps = state => ({
  comments: (state.story ? state.story.comments : ""),
  currentUser: state.currentUser
});

const mapDispatchToProps = dispatch => ({
  destroyComment: (id) => dispatch(destroyComment(id)),
  updateComment: (comment) => dispatch(updateComment(comment))
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(Comments);
