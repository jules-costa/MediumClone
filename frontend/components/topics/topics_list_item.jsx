import React from 'react';
import { Link } from 'react-router-dom';

class TopicsListItem extends React.Component {
  constructor(props) {
    super(props);
    this.switchTopic = this.switchTopic.bind(this);
  }

  switchTopic(topicId) {
    return () => this.props.fetchStories(topicId);
  }

  render () {
    const { topic } = this.props;
    return (
      <button onClick={this.switchTopic(topic.id)}>{topic.title}</button>
    );
  }
}

export default TopicsListItem;
