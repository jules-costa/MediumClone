import React from 'react';
import { withRouter } from 'react-router-dom';

class UserProfile extends React.Component {
  constructor(props) {
    super(props);
  }

  componentDidMount() {
    this.props.fetchProfile(this.props.match.params.userId);
  }

  componentWillReceiveProps(nextProps) {
    if (this.props.match.params.userId !== nextProps.match.params.userId) {
      this.props.fetchProfile(nextProps.match.params.userId);
    }
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
          <button className="follow-unfollow">change</button>
        </div>
      </section>
    );
  }
}

export default withRouter(UserProfile);
