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

  update(field) {
    return (e) => this.setState({ [field] : e.target.value });
  }

  renderErrors() {
    return(
      <ul>
        {this.props.errors.map((error, i) => (
          <li key={`error-${i}`}>
            {error}
          </li>
        ))}
      </ul>
    );
  }

  navLink() {
    if (this.props.formType === 'login') {
      return <Link to='/signup'>Sign up instead</Link>;
    } else {
      return <Link to='/login'>Log in instead</Link>;
    }
  }

  render () {
    return (
      <div className="login-form-container">
        <form className="login-form-box">
          Welcome to Ouija!
          Please {this.props.formType} or {this.navLink()}
          {this.renderErrors()}
          <div className="login-form">
            <label>Username:
              <input type="text"
                className="login-input"
                value={this.state.username}
                onChange={this.update('username')} />
            </label>
            <label>Password:
              <input type="password"
                className="login-input"
                value={this.state.password}
                onChange={this.update('password')} />
              <input type="submit" onClick={this.handleSubmit}/>
            </label>
          </div>
        </form>
      </div>
    );
  }
}

export default withRouter(SessionForm);
