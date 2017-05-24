import { connect } from 'react-redux';
import UpdateProfile from './update_profile';
import { updateProfile } from '../../actions/user_actions';

const mapStateToProps = state => ({
  userProfile: state.userProfile,
  currentUser: state.currentUser,
  errors: state.errors
});

const mapDispatchToProps = dispatch => ({
  updateProfile: (user) => dispatch(updateProfile(user))
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(UpdateProfile);
