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
          <div className="welcome">Welcome to Ouija!</div>
          <div className="login-or-signup">Please {this.props.formType} or {this.navLink()}</div>
          <button className="demo-user" onClick={ this.demoLogin }>Demo Login!</button>
          {this.renderErrors()}

          <div className="login-form">
            <section className="content bgcolor-8">
              <span className="input input--isao">
                <input className="input__field input__field--isao" type="text" id="input-38" value={this.state.username}
                  onChange={this.update('username')} />
                <label className="input__label input__label--isao" data-content="First Name">
                  <span className="input__label-content input__label-content--isao">First Name</span>
                </label>
              </span>
            </section>
            <section className="content bgcolor-8">
              <span className="input input--isao">
                <input className="input__field input__field--isao" type="password" id="input-38" value={this.state.password}
                  onChange={this.update('password')} />
                <label className="input__label input__label--isao" data-content="Password">
                  <span className="input__label-content input__label-content--isao">Password</span>
                </label>
              </span>
            </section>
              <input type="submit" className="submit-button" onClick={this.handleSubmit}/>
          </div>
        </form>
      </div>
    );
  }
}



export default withRouter(SessionForm);
