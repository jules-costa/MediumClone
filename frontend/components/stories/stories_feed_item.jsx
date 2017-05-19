import React from 'react';

const StoryFeedItem = ({ story }) => (
  <div className="masonry-layout__panel">
    <div className="masonry-layout__panel-content">
      <img src={story.image}></img>
      <h1>{story.title}</h1>
      <h4>{story.truncatedBody}</h4>
      <img src={story.author_image} className="author-small"></img>
      <h5>{story.author_name}</h5>
      <h6>{story.read_time}</h6>
    </div>
  </div>
);

export default StoryFeedItem;
