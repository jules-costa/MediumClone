import React from 'react';
import { withRouter, Link } from 'react-router-dom';

import Dropzone from 'react-dropzone';
import request from 'superagent';

const CLOUDINARY_UPLOAD_PRESET = 'tio3bhpb';
const CLOUDINARY_UPLOAD_URL = 'https://api.cloudinary.com/v1_1/jules-costa/image/upload';

class UpdateStory extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      id: this.props.story.id,
      title: this.props.story.title,
      description: this.props.story.description,
      body: this.props.story.body,
      image_url: this.props.story.image_url
    };
    this.handleUpdate = this.handleUpdate.bind(this);
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

  handleUpdate(e) {
    e.preventDefault();
    this.props.updateStory(this.state).then(story => this.props.history.push(`/stories/${this.props.story.id}`));
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

  render () {
    return (
      <section className="story-form-container">
        <div className="new-story-header">
          <section className="user-info">
            <Link className="user-info" to={`/users/${this.props.currentUser.id}`}>
              <img src={this.props.currentUser.image_url} className="author-small"></img>
              <h5 className="author-name-new-story">{this.props.currentUser.username}</h5>
            </Link>
          </section>
          <button className="submit-story" onClick={this.handleUpdate}>Update</button>
        </div>
        <form className="new-story-form">
          <h4 className="story-errors">{this.renderErrors()}</h4>
          <input type="text"
            ref={ (input) => {this.textInput = input; }}
            className="title"
            placeholder={this.props.story.title}
            value={this.state.title}
            onChange={this.update('title')} />
          <input type="text"
            className="description"
            placeholder="Add a description"
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
            placeholder={this.props.story.body}
            value={this.state.body}
            onChange={this.update('body')} />
          <img value={this.state.image_url} src={this.state.image_url} />
        </form>
      </section>
    );
  }
}

export default withRouter(UpdateStory);
