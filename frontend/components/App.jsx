import React from 'react';
import SessionFormContainer from './session/session_form_container';
import NavbarContainer from './home/navbar_container';
import StoriesFeedContainer from './home/stories_feed_container';
import { Route } from 'react-router-dom';
import { AuthRoute } from '../util/route_util';

const App = () => (
  <div>
    <header className="navbar">
      <a href="/">
        <img className="site-logo" src="/assets/ouija_logo.png" alt="Ouija logo" />
      </a>
      <NavbarContainer/>
    </header>

    <AuthRoute path="/login" component={SessionFormContainer} />
    <AuthRoute path="/signup" component={SessionFormContainer} />
  </div>
);

export default App;
