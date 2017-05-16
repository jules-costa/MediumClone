import React from 'react';
import ReactDOM from 'react-dom';
import configureStore from './store/store';

import { login, logout, signup } from './util/session_api_util';

window.login = login;
window.logout = logout;
window.signup = signup;

document.addEventListener('DOMContentLoaded', () => {
  const root = document.getElementById('root');
  const store = configureStore();
  window.store = store;
  ReactDOM.render(<h1>Welcome to Ouija</h1>, root);
});
