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
    return (
      <h1>{this.props.userProfile.id}</h1>
    );
  }
}

export default withRouter(UserProfile);
