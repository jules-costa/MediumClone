import React from 'react';

class CommentForm extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      body: '',
      author_id: this.props.currentUser.id,
    };

    this.handleSubmit = this.handleSubmit.bind(this);
    this.update = this.update.bind(this);
  }

  handleSubmit(e) {
    e.preventDefault();
    this.props.createComment({body: this.state.body, author_id: this.state.author_id, story_id: this.props.story.id}, this.props.story.id);
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
    return(
      <div>
        <h4 className="comment-errors">{this.renderErrors()}</h4>
        <section className="response-form-container">
          <input type="text"
            className="response-body"
            placeholder="Write a response..."
            value={this.state.body}
            onChange={this.update('body')} />
          <button className="submit-comment" onClick={this.handleSubmit}>Publish</button>
        </section>
      </div>
    );
  }
}

export default CommentForm;
