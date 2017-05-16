import React from 'react';
import { Link, withRouter } from 'react-router-dom';

const sessionLinks = () => (
  <nav className="login-signup">
    <Link to='/login'>Sign in</Link>
    <Link to='/signup'>Sign up</Link>
    <Link to='/guest'>Sign in as Guest</Link>
  </nav>
);

const handleLogout = (logout, history) => e => {
  e.preventDefault();
  logout().then(user => history.push('/guest'));
};

const personalGreeting = (currentUser, logout, history) => (
  <div className="header-group">
    <img className="user-image-small" src={ currentUser.image_url } />
    <button className="header-button" onClick={ handleLogout(logout, history) }>Log Out</button>
  </div>
);

const HomeNavbar = ({ currentUser, logout, history }) => (
  currentUser && currentUser.username ? personalGreeting(currentUser, logout, history) : sessionLinks()
);

export default withRouter(HomeNavbar);
