import React from 'react';
import merge from 'lodash/merge';
import { withRouter } from 'react-router-dom';

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

  render () {
    return (
      <div>
        <form className="auth-form" >
          <h1>
            {this.props.formType === 'login' ? "Log in" : "Sign up"}
          </h1>
          <input
            type="text"
            value={this.state.username}
            placeholder="username"
            onChange={this.update('username')} />
          <input
            type="text"
            value={this.state.password}
            placeholder="password"
            onChange={this.update('password')} />
          <input type="submit" onClick={this.handleSubmit}/>
        </form>
      </div>
    );
  }
}

export default withRouter(SessionForm);
