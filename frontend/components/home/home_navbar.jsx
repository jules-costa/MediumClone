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


const personalGreeting = (currentUser, logout, history) => (
  <div className="header-group">
    <Link to={`/users/${currentUser.id}`} className="user-logo"><img className="user-image-small" src={ currentUser.image_url } /></Link>
    <Link to="/write" className="new-story-link">Write a Poem</Link>
    <a href='' className="logout-link" onClick={ handleLogout(logout, history) }>Log Out</a>
  </div>
);

const HomeNavbar = ({ currentUser, logout, history }) => (
  currentUser && currentUser.username ? personalGreeting(currentUser, logout, history) : sessionLinks()
);


export default withRouter(HomeNavbar);
