import React from 'react';

class StoryDetail extends React.Component {

  componentDidMount() {
    console.log(this.props);
    this.props.fetchStory(this.props.match.params.storyId);
  }

  render() {
    console.log("HERE");
    return (
      <h1>{this.props.story.title}</h1>
    );
  }
}

export default StoryDetail;
