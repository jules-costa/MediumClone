import React from 'react';
import { withRouter } from 'react-router-dom';

class UpdateProfile extends React.Component {
  constructor(props) {
    super(props);
  }

  render() {
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
            <h1>updatebutton</h1>
          </div>
        </section>
    );
  }
}

export default withRouter(UpdateProfile);
