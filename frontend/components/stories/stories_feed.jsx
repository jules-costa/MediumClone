import React from 'react';
import StoryFeedItem from './stories_feed_item';


class StoriesFeed extends React.Component {
  componentDidMount() {
    this.props.fetchStories();
  }

  render() {
    return(
      <section className="feed">
        {this.props.stories.map((story, i) => <StoryFeedItem key={story.id} story={story} />)}
      </section>
    );
  }
}


export default StoriesFeed;
