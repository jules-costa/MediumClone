import React from 'react';
import TopicsListItem from './topics_list_item';
import { withRouter } from 'react-router-dom';

class TopicsList extends React.Component {
  componentDidMount() {
    this.props.fetchTopics();
  }

  render() {
    return(
      <section className="topic-list">
        {this.props.topics.map((topic, i) => <TopicsListItem key={topic.id} topic={topic} />)}
      </section>
    );
  }
}


export default withRouter(TopicsList);
