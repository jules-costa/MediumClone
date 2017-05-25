import React from 'react';
import { withRouter, Route, Link, NavLink } from 'react-router-dom';

class UserProfile extends React.Component {
  constructor(props) {
    super(props);
    this.state=({
      followers: 0,
      following: 0,
      username: this.props.userProfile.username,
      image_url: this.props.userProfile.image_url,
      biography: this.props.userProfile.biography,
      // likedStories: this.props.fetchLikedStories(this.props.userProfile.id)
    });
    this.handleUpdate = this.handleUpdate.bind(this);
    this.toggleFollowButton = this.toggleFollowButton.bind(this);
  }

  componentDidMount() {
    this.props.fetchProfile(this.props.match.params.userId).then(() => this.props.fetchLikedStories(this.props.userProfile.id));
  }

  componentWillReceiveProps(nextProps) {
    console.log(nextProps.match);
    if (this.props.match.params.userId !== nextProps.match.params.userId) {
      this.props.fetchProfile(nextProps.match.params.userId);
    }
    if (this.props.match.path !== nextProps.match.path) {
      if (nextProps.match.path === "/users/:userId/recommends") {
        this.props.fetchRecommendedStories(this.props.userProfile.id);
      } else {
        this.props.fetchLikedStories(this.props.userProfile.id);    
      }
    }
  }

  toggleFollowButton() {
    if (this.props.userProfile.follows) {
      return "Unfollow";
    } else {
      return "Follow";
    }
  }

  userOptions() {
    if (this.props.userProfile.id === this.props.currentUser.id) {
      return (
        <Link to={`/users/${this.props.currentUser.id}/update`} className="follow-unfollow">Edit</Link>
      );
    } else {
      return (
        <button className="follow-unfollow" onClick={this.handleUpdate(this.props.userProfile.id)}>{this.toggleFollowButton()}</button>
      );
    }
  }

  handleUpdate(userId) {
    if (this.props.userProfile.follows) {
      return () => this.props.destroyFollow(userId);
    } else {
      return () => this.props.createFollow({guru_id: userId});
    }
  }

  render () {
    const { username, image_url, biography, disciples, gurus } = this.props.userProfile;
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
            <NavLink exact to={`/users/${this.props.userProfile.id}`}>Profile</NavLink>
            <NavLink to={`/users/${this.props.userProfile.id}/recommends`}>Recommends</NavLink>
          </nav>
        </section>
        <section className="mini-feed">

        </section>
      </div>
    );
  }
}

export default withRouter(UserProfile);
