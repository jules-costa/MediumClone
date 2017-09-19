import React from 'react';
import { NavLink } from 'react-router-dom';

class TopicsListItem extends React.Component {
  constructor(props) {
    super(props);
    this.switchTopic = this.switchTopic.bind(this);
  }

  switchTopic(topic) {
    return () => this.props.fetchStories(topic);
  }

  render () {
    const { topic } = this.props;
    return (
      <button className="topic-button" onClick={this.switchTopic(topic.id)}>{topic.title}</button>
    );
  }
}

export default TopicsListItem;

//
// <div className="topic-link">
//   <NavLink to={`/topics/${this.props.topic.id}`}>{topic.title}</NavLink>
// </div>
