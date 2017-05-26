import React from 'react';
import { withRouter, Route, Link, NavLink } from 'react-router-dom';
import StoryFeedItem from '../stories/stories_feed_item';

class UserProfile extends React.Component {
  constructor(props) {
    super(props);
    this.state=({
      followers: 0,
      following: 0,
      username: this.props.userProfile.username,
      image_url: this.props.userProfile.image_url,
      biography: this.props.userProfile.biography,
    });
    this.handleUpdate = this.handleUpdate.bind(this);
    this.toggleFollowButton = this.toggleFollowButton.bind(this);
  }

  componentDidMount() {
    this.props.fetchProfile(this.props.match.params.userId).then(() => this.props.fetchLikedStories(this.props.userProfile.id));
  }

  componentWillReceiveProps(nextProps) {
    const { match, fetchProfile, fetchRecommendedStories,
      fetchLikedStories, userProfile } = this.props;
    if (match.params.userId !== nextProps.match.params.userId) {
      fetchProfile(nextProps.match.params.userId);
    }
    if (match.path !== nextProps.match.path) {
      if (nextProps.match.path === "/users/:userId/recommends") {
        fetchRecommendedStories(userProfile.id);
      } else {
        fetchLikedStories(userProfile.id);
      }
    }
  }

  userOptions() {
    const { userProfile, currentUser } = this.props;
    if (userProfile.id === currentUser.id) {
      if (userProfile.username !== "Guest") {
        return (
          <Link to={`/users/${currentUser.id}/update`}
            className="follow-unfollow">
            Edit
          </Link>
        );
      }
    } else {
      return (
        <button className="follow-unfollow"
          onClick={this.handleUpdate(userProfile.id)}>
          {this.toggleFollowButton()}
        </button>
      );
    }
  }


  toggleFollowButton() {
    const { userProfile } = this.props;
    if (userProfile.follows) {
      return "Unfollow";
    } else {
      return "Follow";
    }
  }
  handleUpdate(userId) {
    const { destroyFollow, createFollow } = this.props;
    if (this.props.userProfile.follows) {
      return () => destroyFollow(userId);
    } else {
      return () => createFollow({guru_id: userId});
    }
  }

  render () {
    const { username, image_url, biography, disciples, gurus } = this.props.userProfile;
    const { userProfile, stories } = this.props;
    return (
      <div className="user-full-page">
        <section className="user-detail-container">
          <section className="user-details">
            <div className="name-bio">
              <h1>{username}</h1>
              <h4 className="bio">{biography}</h4>
            </div>
            <img className="user-logo-medium" src={image_url}></img>
          </section>
          <section className="follows">
            <h5 className="following"><strong>{gurus}</strong> Following</h5>
            <h5><strong>{disciples}</strong> Followers</h5>
          </section>
          <div className="profile-buttons">
            {this.userOptions()}
          </div>
        </section>
        <section className="recommends">
          <nav className="toggle-recommends">
            <NavLink exact to={`/users/${userProfile.id}`}>Profile</NavLink>
            <NavLink to={`/users/${userProfile.id}/recommends`}>Recommends</NavLink>
          </nav>
        </section>
        <section className="mini-feed">

          {Object.keys(stories).map(
            (key, i) => <StoryFeedItem
            key={stories[key].id}
            story={stories[key]}
            />)}
        </section>
      </div>
    );
  }
}

export default withRouter(UserProfile);
