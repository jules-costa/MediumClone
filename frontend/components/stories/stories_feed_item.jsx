import React from 'react';

const StoryFeedItem = ({ story }) => (
  <div className="masonry-layout__panel">
    <div className="masonry-layout__panel-content">
      {story.image}
      {story.title}
      {story.truncatedBody}
      {story.author_image}
      {story.author_name}
      {story.read_time}
    </div>
  </div>
);

export default StoryFeedItem;
