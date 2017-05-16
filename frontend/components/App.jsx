import React from 'react';
import SessionFormContainer from './session/session_form_container';
import { Route } from 'react-router-dom';

const App = () => (
  <div>
    <header>
      Ouija
    </header>

    <Route path="/login" component={SessionFormContainer} />
    <Route path="/signup" component={SessionFormContainer} />
  </div>
);

export default App;
