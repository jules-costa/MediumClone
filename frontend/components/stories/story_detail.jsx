import React from 'react';
import { withRouter, Link } from 'react-router-dom';
import CommentsContainer from '../comments/comments_container';
import CommentFormContainer from '../comments/comment_form_container';

class StoryDetail extends React.Component {
  constructor(props) {
    super(props);
    this.handleDelete = this.handleDelete.bind(this);
    this.handleUpdate = this.handleUpdate.bind(this);
  }

  componentDidMount() {
    this.props.fetchStory(this.props.match.params.storyId);
  }

  componentWillReceiveProps(nextProps) {
    if (this.props.match.params.storyId !== nextProps.match.params.storyId) {
      this.props.fetchStory(nextProps.match.params.storyId);
    }
  }

  handleDelete(id) {
    return () => this.props.destroyStory(id).then(data => this.props.history.push("/"));
  }

  handleUpdate(storyId) {
    if (this.props.story.liked) {
      return () => this.props.destroyLike(storyId);
    } else {
      return () => this.props.createLike({story_id: storyId});
    }
  }

  toggleHeart() {
    if (this.props.story.liked) {
      return (
        <i className="fa fa-heart" aria-hidden="true"></i>
      );
    } else {
      return (
        <i className="fa fa-heart-o" aria-hidden="true"></i>
      );
    }
  }

  displayStoryOptions(story, currentUser) {
    if (currentUser.id === story.author.author_id) {
      return (
        <div className="alter-story-links">
          <Link to={`/stories/${this.props.story.id}/update`} className="follow-unfollow">Edit</Link>
          <button className="follow-unfollow" onClick={this.handleDelete(story.id)}>Delete</button>
        </div>
      );
    }
  }

  render() {
    return (
      <section className="story-show-page">
        <section className="sidebar">
          <button id='heart' className="white" onClick={this.handleUpdate(this.props.story.id)}>{this.toggleHeart()}</button>
          <h5>{this.props.story.likes}</h5>
        </section>
        <section className="main-content">
          <section className="story-author-details">
            <div className="author-logo-show">
              {this.props.story.author ? <Link to={`/users/${this.props.story.author.author_id}`}><img src={this.props.story.author.author_image} className="author-small"></img></Link> : ""}
            </div>
            <div className="author-info">
              {this.props.story.author ? <Link to={`/users/${this.props.story.author.author_id}`}><h5 className="author-name">{this.props.story.author.author_name}</h5></Link> : ""}
              {this.props.story.author ? <h6 className="author-bio">{this.props.story.author.author_biography}</h6> : ""}
              <h6>{this.props.story.read_time}</h6>
            </div>
          </section>
          <section className="story-details">
            {this.props.story.author? this.displayStoryOptions(this.props.story, this.props.currentUser) : ""}
            <h1 className="story-title">{this.props.story.title}</h1>
            <h2 className="story-description">{this.props.story.description}</h2>
            <img src={this.props.story.image}></img>
            <p className="body-text">{this.props.story.body}</p>
          </section>
          <CommentFormContainer />
          {this.props.story.comments ? <CommentsContainer comments={this.props.story.comments}/> : ""}
        </section>
      </section>
    );
  }
}

export default withRouter(StoryDetail);
