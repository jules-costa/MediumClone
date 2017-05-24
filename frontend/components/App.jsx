import React from 'react';
import SessionFormContainer from './session/session_form_container';
import NavbarContainer from './home/navbar_container';
import StoriesFeedContainer from './stories/stories_feed_container';
import StoryDetailContainer from './stories/story_detail_container';
import StoryFormContainer from './stories/story_form_container';
import UserProfileContainer from './home/user_profile_container';
import UpdateProfileContainer from './home/update_profile_container';

import { Route, Switch } from 'react-router-dom';
import { AuthRoute, ProtectedRoute } from '../util/route_util';

const App = () => (
  <section className="main-section">
    <header className="navbar">
      <a className="full-logo" href="/">
        <img className="site-logo" src="http://res.cloudinary.com/jules-costa/image/upload/v1495503351/ouija_logo_a022bd.png" alt="Ouija logo" />
        <h4 className="logo-text">Ouija</h4>
      </a>
      <NavbarContainer/>
    </header>

    <Route exact path="/" component={StoriesFeedContainer} />
    <AuthRoute path="/login" component={SessionFormContainer} />
    <AuthRoute path="/signup" component={SessionFormContainer} />
    <ProtectedRoute path="/write" component={StoryFormContainer} />
    <ProtectedRoute path="/stories/:storyId" component={StoryDetailContainer} />
    <Switch>
      <ProtectedRoute path="/users/:userId/update" component={UpdateProfileContainer} />
      <ProtectedRoute path="/users/:userId" component={UserProfileContainer} />
    </Switch>
    <ProtectedRoute path="/users/:userId/recommends" component={UserProfileContainer} />
  </section>
);

export default App;
