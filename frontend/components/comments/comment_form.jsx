import React from 'react';

class CommentForm extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      body: "",
      author_id: this.props.currentUser.id,
    };

    this.handleSubmit = this.handleSubmit.bind(this);
    this.update = this.update.bind(this);
  }

  handleSubmit(e) {
    e.preventDefault();
    this.props.createComment({body: this.state.body, author_id: this.state.author_id, story_id: this.props.story.id}, this.props.story.id)
    .then(this.setState({
      body: "",
    }));
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
        <div className="comment-form-container">
          <label className="responses">Responses
            <section className="response-form-container">
              <img className="comment-author-image" src={this.props.currentUser.image_url} />
              <textarea type="text"
                className="response-body"
                placeholder="Write a response..."
                value={this.state.body}
                onChange={this.update('body')}></textarea>
            </section>
          </label>
          <div className="publish-button">
            <button className="submit-comment" onClick={this.handleSubmit}>Publish</button>
          </div>
        </div>
      </div>
    );
  }
}

export default CommentForm;
