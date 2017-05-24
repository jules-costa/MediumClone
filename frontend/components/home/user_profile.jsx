import React from 'react';
import { withRouter, Route, Link } from 'react-router-dom';

class UserProfile extends React.Component {
  constructor(props) {
    super(props);
    this.state=({
      followers: 0,
      following: 0,
      username: this.props.userProfile.username,
      image_url: this.props.userProfile.image_url,
      biography: this.props.userProfile.biography
    });
    this.handleUpdate = this.handleUpdate.bind(this);
    this.toggleFollowButton = this.toggleFollowButton.bind(this);
  }

  componentDidMount() {
    this.props.fetchProfile(this.props.match.params.userId);
  }

  componentWillReceiveProps(nextProps) {
    if (this.props.match.params.userId !== nextProps.match.params.userId) {
      this.props.fetchProfile(nextProps.match.params.userId);
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
    );
  }
}

export default withRouter(UserProfile);
