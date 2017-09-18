import React from 'react';
import merge from 'lodash/merge';
import { withRouter, Link } from 'react-router-dom';

class SessionForm extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      username: "",
      password: ""
    };
    this.handleSubmit = this.handleSubmit.bind(this);
    this.update = this.update.bind(this);
    this.demoLogin = this.demoLogin.bind(this);
  }

  componentWillReceiveProps(nextProps) {
    if (nextProps.loggedIn) {
      this.props.history.push('/');
    }
  }

  handleSubmit(e) {
    e.preventDefault();
    const user = merge({}, this.state);
    this.props.processForm(user).then(
      this.setState({
        username: "",
        password: ""
      })
    );
  }

  demoLogin(e) {
    e.preventDefault();
    this.props.login({username: "Guest", password: "password"});
  }

  update(field) {
    return (e) => this.setState({ [field] : e.target.value });
  }

  renderErrors() {
    return(
      <ul>
        {this.props.errors.map((error, i) => (
          <li key={`error-${i}`}>
            *** {error} ***
          </li>
        ))}
      </ul>
    );
  }

  navLink() {
    if (this.props.formType === 'login') {
      return <Link to='/signup'>sign up instead</Link>;
    } else {
      return <Link to='/login'>log in instead</Link>;
    }
  }

  render () {
    return (
      <div className="behind-hero">
        <section className="hero">
          <form className="login-form-container">
            <h1 className="welcome">Ouija</h1>
            <h2 className="stories-that-move">Poems that move with you.</h2>
            <h3 className="login-or-signup">Please {this.props.formType} or {this.navLink()}</h3>
            <h4 className="login-errors">{this.renderErrors()}</h4>

            <div className="login-form">
              <input type="text"
                className="login-input"
                value={this.state.username}
                placeholder="username"
                onChange={this.update('username')} />
              <input type="password"
                className="login-input"
                value={this.state.password}
                placeholder="password"
                onChange={this.update('password')} />
            </div>
            <div className="login-button">
              <button className="button submit-button" onClick={this.handleSubmit}>{this.props.location.pathname === '/login' ? "Log In" : "Sign Up"}</button>
              <h4 className="or">or</h4>
              <button className="button demo-user" onClick={ this.demoLogin }>Demo Login!</button>
            </div>
          </form>
          <footer className="footer">
            <div>Getting started</div>
            <div>Help</div>
            <div>Status</div>
            <div>Blog</div>
            <div>Careers</div>
            <div>Privacy</div>
            <div>Terms</div>
            <div>About</div>
          </footer>
        </section>
      </div>
    );
  }
}

export default withRouter(SessionForm);
