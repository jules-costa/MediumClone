import React from 'react';
import { withRouter } from 'react-router-dom';
import CommentsContainer from '../comments/comments_container';
import CommentFormContainer from '../comments/comment_form_container';

class StoryDetail extends React.Component {

  componentDidMount() {
    this.props.fetchStory(this.props.match.params.storyId);
  }

  componentWillReceiveProps(nextProps) {
    if (this.props.match.params.storyId !== nextProps.match.params.storyId) {
      this.props.fetchStory(nextProps.match.params.storyId);
    }
  }

  render() {
    return (
      <section className="story-show-page">
        <section className="story-author-details">
          <div className="author-logo-show">
            <img src={this.props.story.author_image} className="author-small"></img>
          </div>
          <div className="author-info">
            <h5 className="author-name">{this.props.story.author_name}</h5>
            <h6 className="author-bio">{this.props.story.author_biography}</h6>
            <h6>{this.props.story.read_time}</h6>
          </div>
        </section>
        <section className="story-details">
          <h1 className="story-title">{this.props.story.title}</h1>
          <h2 className="story-description">{this.props.story.description}</h2>
          <img src={this.props.story.image}></img>
          <p className="body-text">{this.props.story.body}</p>
        </section>

        <CommentFormContainer story={this.props.story} />
        <CommentsContainer story={this.props.story} />
      </section>
    );
  }
}

export default withRouter(StoryDetail);
