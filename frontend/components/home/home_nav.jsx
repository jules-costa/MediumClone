import React from 'react';
import { Link } from 'react-router-dom';
// add link and route to sign in as guest

const HomeNav = (props) => (
  <nav className="home-nav">
    <Link to='/login'>Sign in</Link>
    <Link to='/signup'>Sign up</Link>
    <Link to='/'>Sign in as Guest</Link>
  </nav>
);

export default HomeNav;
