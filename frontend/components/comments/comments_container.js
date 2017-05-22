import { connect } from 'react-redux';
import Comments from './comments';

const mapStateToProps = state => ({
  story: state.story,
  currentUser: state.currentUser
});

// const mapDispatchToProps = (dispatch) => ({
//
// });

export default connect(
  mapStateToProps,
  null
)(Comments);
