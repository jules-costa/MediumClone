import React from 'react';

const StoryFeedItem = ({ story }) => (
  <li>
    <span>{story.title}</span>
    <span>{story.truncatedBody}</span>
  </li>
);

export default StoryFeedItem;
