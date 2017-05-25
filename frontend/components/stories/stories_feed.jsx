import React from 'react';
import StoryFeedItem from './stories_feed_item';
import TopicsContainer from '../topics/topics_container';


class StoriesFeed extends React.Component {
  componentDidMount() {
    this.props.fetchStories();
  }

  render() {
    return(
      <div className="feed-wrapper">
        <TopicsContainer/>
        <section className="feed">
          {this.props.stories.map((story, i) => <StoryFeedItem key={story.id} story={story} />)}
        </section>
      </div>
    );
  }
}


export default StoriesFeed;
