import { connect } from 'react-redux';
import UserProfile from './user_profile';
import { createFollow, destroyFollow, fetchProfile } from '../../actions/user_actions';

const mapStateToProps = state => ({
  userProfile: state.userProfile,
  currentUser: state.currentUser
});

const mapDispatchToProps = dispatch => ({
  createFollow: (user) => dispatch(createFollow(user)),
  destroyFollow: (user) => dispatch(destroyFollow(user)),
  fetchProfile: (id) => dispatch(fetchProfile(id))
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(UserProfile);
