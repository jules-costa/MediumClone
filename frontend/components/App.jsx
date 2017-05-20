import React from 'react';
import SessionFormContainer from './session/session_form_container';
import NavbarContainer from './home/navbar_container';
import StoriesFeedContainer from './stories/stories_feed_container';
import StoryDetailContainer from './stories/story_detail_container';
import StoryFormContainer from './stories/story_form_container';

import { Route } from 'react-router-dom';
import { AuthRoute } from '../util/route_util';

const App = () => (
  <section className="main-section">
    <header className="navbar">
      <a className="full-logo" href="/">
        <img className="site-logo" src="/assets/ouija_logo.png" alt="Ouija logo" />
        <h4 className="logo-text">Ouija</h4>
      </a>
      <NavbarContainer/>
    </header>

    <Route exact path="/" component={StoriesFeedContainer} />
    <AuthRoute path="/login" component={SessionFormContainer} />
    <AuthRoute path="/signup" component={SessionFormContainer} />
    <Route path="/write" component={StoryFormContainer} />
    <Route path="/api/stories/:storyId" component={StoryDetailContainer} />
  </section>
);

export default App;
