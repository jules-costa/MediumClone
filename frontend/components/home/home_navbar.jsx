import React from 'react';
import { Link } from 'react-router-dom';
// add link and route to sign in as guest

const sessionLinks = () => (
  <nav className="login-signup">
    <Link to='/login'>Sign in</Link>
    <Link to='/signup'>Sign up</Link>
    <Link to='/'>Sign in as Guest</Link>
  </nav>
);

const personalGreeting = (currentUser, logout) => (
  <div className="header-group">
    <img className="user-image-small" src={ currentUser.image_url } />
    <button className="header-button" onClick={ logout }>Log Out</button>
  </div>
);

const HomeNavbar = ({ currentUser, logout }) => (
  currentUser ? personalGreeting(currentUser, logout) : sessionLinks()
);

export default HomeNavbar;
