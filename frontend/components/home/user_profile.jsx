import React from 'react';
import { withRouter } from 'react-router-dom';

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
    // this.toggleFollowButton = this.toggleFollowButton.bind(this);
  }

  componentDidMount() {
    this.props.fetchProfile(this.props.match.params.userId);
  }

  componentWillReceiveProps(nextProps) {
    if (this.props.match.params.userId !== nextProps.match.params.userId) {
      this.props.fetchProfile(nextProps.match.params.userId);
    }
  }
  //
  // toggleFollowButton() {
  //   if (this.props.currentUser.follows.hasOwnProperty(this.props.userProfile.id)) {
  //     return "Unfollow";
  //   } else {
  //     return "Follow";
  //   }
  // }

  handleUpdate(user) {
    return () => this.props.updateProfile(user);
  }


  render () {
    const { username, image_url, biography, followers, following } = this.props.userProfile;
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
          <h5><strong>{following}</strong> Following</h5>
          <h5><strong>{followers}</strong> Followers</h5>
        </section>
        <div>
          <button className="follow-unfollow" onClick={this.handleUpdate(this.props.userProfile)}>change</button>
        </div>
      </section>
    );
  }
}

export default withRouter(UserProfile);
