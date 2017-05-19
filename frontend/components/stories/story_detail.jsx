import React from 'react';
import { withRouter } from 'react-router-dom';

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
      <div>
        <h1>{this.props.story.title}</h1>
        <h4>{this.props.story.body}</h4>
        <img src={this.props.story.image}></img>
        <h6>{this.props.story.read_time}</h6>
        <h5>{this.props.story.author_name}</h5>
        <img src={this.props.story.author_image} className="author-small"></img>
        <h6>{this.props.story.author_biography}</h6>
      </div>
    );
  }
}

export default withRouter(StoryDetail);
