import { connect } from 'react-redux';
import UserProfile from './user_profile';
import { updateProfile, fetchProfile } from '../../actions/user_actions';

const mapStateToProps = state => ({
  userProfile: state.userProfile,
  currentUser: state.currentUser
});

const mapDispatchToProps = dispatch => ({
  updateProfile: (user) => dispatch(updateProfile(user)),
  fetchProfile: (id) => dispatch(fetchProfile(id))
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(UserProfile);
