import React from 'react';
import merge from 'lodash/merge';

class StoryForm extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      title: "",
      body: "",
      // image_url: ""
    };
    this.handleSubmit = this.handleSubmit.bind(this);
    this.update = this.update.bind(this);
  }

  handleSubmit(e) {
    e.preventDefault();
    const story = merge({}, this.state);
    this.props.createStory(story).then(
      this.setState({
        title: "",
        body: "",
        // image_url: ""
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
          <h5 className="author-name">{this.props.currentUser.username}</h5>
        </section>
        <form className="new-story-form">
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

export default StoryForm;
