import React from 'react';
import StoryFeedItem from './stories_feed_item';

class StoriesFeed extends React.Component {
  componentDidMount() {
    this.props.fetchStories();
  }

  render() {
    return(
      <div className="masonry-layout">
        {this.props.stories.map((story, i) => <StoryFeedItem key={story.id} story={story} />)}
      </div>
    );
  }
}


export default StoriesFeed;
