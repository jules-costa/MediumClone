import React from 'react';
import { Link } from 'react-router-dom';
// add link and route to sign in as guest

const HomeNavbar = ({ currentUser, logout }) => (
  <nav className="home-nav">
    <ul>
      <li>
        <Link to='/login'>Sign in</Link>
      </li>
      <li>
        <Link to='/signup'>Sign up</Link>
      </li>
      <li>
        <Link to='/'>Sign in as Guest</Link>
      </li>
    </ul>
  </nav>
);

export default HomeNavbar;
