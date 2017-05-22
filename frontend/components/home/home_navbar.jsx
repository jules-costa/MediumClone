import React from 'react';
import { Link, withRouter } from 'react-router-dom';

const sessionLinks = () => (
  <nav className="login-signup">
    <Link to='/login' className="auth-link">Sign in</Link>
    <Link to='/signup' className="auth-link">Sign up</Link>
  </nav>
);

const handleLogout = (logout, history) => e => {
  e.preventDefault();
  logout().then(user => history.push('/'));
};

const toggleWriteStory = (turnOff) => {
  if (turnOff) {
    return (
      null
    );
  } else {
    return (
      <Link to="/write" className="new-story-link">Write a Story</Link>
    );
  }
};

const personalGreeting = (currentUser, logout, history, turnOff) => (
  <div className="header-group">
    <a className="user-logo" href='/'>
      <img className="user-image-small" src={ currentUser.image_url } />
    </a>
    <div>{toggleWriteStory(turnOff)}</div>
    <a href='' className="logout-link" onClick={ handleLogout(logout, history) }>Log Out</a>
  </div>
);

const HomeNavbar = ({ currentUser, logout, history, turnOff }) => (
  currentUser && currentUser.username ? personalGreeting(currentUser, logout, history) : sessionLinks()
);

export default withRouter(HomeNavbar);
