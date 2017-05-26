import React from 'react';
import merge from 'lodash/merge';
import { withRouter, Link } from 'react-router-dom';

import Dropzone from 'react-dropzone';
import request from 'superagent';

const CLOUDINARY_UPLOAD_PRESET = 'tio3bhpb';
const CLOUDINARY_UPLOAD_URL = 'https://api.cloudinary.com/v1_1/jules-costa/image/upload';

class StoryForm extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      title: "",
      body: "",
      author_id: this.props.currentUser.id,
      description: "",
      image_url: ""
    };
    this.handleSubmit = this.handleSubmit.bind(this);
    this.update = this.update.bind(this);
  }

  componentDidMount() {
    this.textInput.focus();
  }

  onImageDrop(files) {
    this.handleImageUpload(files[0]);
  }

  handleImageUpload(file) {
    let upload = request.post(CLOUDINARY_UPLOAD_URL)
      .field('upload_preset', CLOUDINARY_UPLOAD_PRESET)
      .field('file', file);

    upload.end((err, response) => {
      if (err) {
        console.error(err);
      }
      if (response.body.secure_url !== '') {
        this.setState({
          image_url: response.body.secure_url
        });
      }
    });
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
        <div className="new-story-header">
          <section className="user-info">
            <Link className="user-info" to={`/users/${this.props.currentUser.id}`}>
              <img src={this.props.currentUser.image_url} className="author-small"></img>
              <h5 className="author-name-new-story">{this.props.currentUser.username}</h5>
            </Link>
          </section>
        </div>
        <form className="new-story-form">
          <h4 className="story-errors">{this.renderErrors()}</h4>
          <input type="text"
            ref={ (input) => {this.textInput = input; }}
            className="title"
            placeholder="Title"
            value={this.state.title}
            onChange={this.update('title')} />
          <input type="text"
            className="description"
            placeholder="description"
            value={this.state.description}
            onChange={this.update('description')} />
          <Dropzone
            className="drop-box"
            multiple={false}
            accept="image/*"
            onDrop={this.onImageDrop.bind(this)}>
            <i className="fa fa-plus" aria-hidden="true"></i>
          </Dropzone>
          <textarea type="text"
            className="body"
            placeholder="Tell your story..."
            value={this.state.body}
            onChange={this.update('body')} />
          <button className="follow-unfollow" onClick={this.handleSubmit}>Publish</button>
          <div className="new-image">
            <div className="FileUpload">
            </div>
            <div>
              {this.state.image_url === '' ? null :
              <div>
                <img src={this.state.image_url} />
              </div>}
            </div>
          </div>
        </form>
      </section>
    );
  }
}

export default withRouter(StoryForm);
