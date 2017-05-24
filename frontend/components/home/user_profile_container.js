import { connect } from 'react-redux';
import UserProfile from './user_profile';
import { createFollow, destroyFollow, fetchProfile, updateProfile } from '../../actions/user_actions';
import { fetchLikedStories, fetchRecommendedStories } from '../../actions/story_actions';

const mapStateToProps = state => ({
  userProfile: state.userProfile,
  currentUser: state.currentUser,
  stories: state.stories
});

const mapDispatchToProps = dispatch => ({
  createFollow: (user) => dispatch(createFollow(user)),
  destroyFollow: (user) => dispatch(destroyFollow(user)),
  fetchProfile: (id) => dispatch(fetchProfile(id)),
  updateProfile: (user) => dispatch(updateProfile(user)),
  fetchLikedStories: (id) => dispatch(fetchLikedStories(id)),
  fetchRecommendedStories: (id) => dispatch(fetchRecommendedStories(id))
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(UserProfile);
