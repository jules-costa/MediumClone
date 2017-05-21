import React from 'react';
import merge from 'lodash/merge';
import { withRouter } from 'react-router-dom';

class StoryForm extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      title: "",
      body: "",
      author_id: this.props.currentUser.id
      // image_url: ""
    };
    this.handleSubmit = this.handleSubmit.bind(this);
    this.update = this.update.bind(this);
  }

  handleSubmit(e) {
    e.preventDefault();
    this.props.createStory(this.state).then(data => this.props.history.push(`/stories/${data.id}`));
  }

  update(field) {
    return (e) => this.setState({ [field] : e.target.value });
  }

  renderErrors() {
    return(
      <ul>
        {this.props.errors.map((error, i) => (
          <li key={`error=${i}`}>
            *** { error } ***
          </li>
        ))}
      </ul>
    );
  }

  render() {
    return (
      <section className="story-form-container">
        <section className="user-info">
          <img src={this.props.currentUser.image_url} className="author-small"></img>
          <h5 className="author-name-new-story">{this.props.currentUser.username}</h5>
        </section>
        <form className="new-story-form">
          <h4 className="story-errors">{this.renderErrors()}</h4>
          <input type="text"
            className="title"
            placeholder="Title"
            value={this.state.title}
            onChange={this.update('title')} />
          <textarea type="text"
            className="body"
            placeholder="Tell your story..."
            value={this.state.body}
            onChange={this.update('body')} />
          <button className="submit-story" onClick={this.handleSubmit}>Publish</button>
        </form>
      </section>
    );
  }
}

export default withRouter(StoryForm);
