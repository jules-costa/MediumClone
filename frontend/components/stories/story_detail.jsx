import React from 'react';
import { withRouter, Link } from 'react-router-dom';
import CommentsContainer from '../comments/comments_container';
import CommentFormContainer from '../comments/comment_form_container';

class StoryDetail extends React.Component {
  constructor(props) {
    super(props);
    this.handleDelete = this.handleDelete.bind(this);
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

  displayStoryOptions(story, currentUser) {
    if (currentUser.id === story.author.author_id) {
      return (
        <div className="alter-story-links">
          <button className="delete" onClick={this.handleDelete(story.id)}>Delete</button>
        </div>
      );
    }
  }

  render() {
    return (
      <section className="story-show-page">
        <section className="story-author-details">
          <div className="author-logo-show">
            {this.props.story.author ? <img src={this.props.story.author.author_image} className="author-small"></img> : ""}
          </div>
          <div className="author-info">
            {this.props.story.author ? <h5 className="author-name">{this.props.story.author.author_name}</h5> : ""}
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
    );
  }
}

export default withRouter(StoryDetail);
