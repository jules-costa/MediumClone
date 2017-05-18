import React from 'react';
import StoryFeedItem from './stories_feed_item';


class StoriesFeed extends React.Component {
  componentDidMount() {
    this.props.fetchStories();
  }

  render() {
    console.log(this.props);
    return(
      <div>
        <h1>In the stories feed</h1>
        <ul>
          {this.props.stories.map(story => <StoryFeedItem key={story.id} story={story} />)}
        </ul>
      </div>
    );
  }
}


export default StoriesFeed;
