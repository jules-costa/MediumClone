import React from 'react';
import { Link } from 'react-router-dom';
import { Route } from 'react-router-dom';
import StoryDetailContainer from './story_detail_container';

const StoryFeedItem = ({ story }) => (
  <div className="masonry-layout__panel">
    <div className="masonry-layout__panel-content">
      <Link to={`/api/stories/${story.id}`}>
        <img src={story.image}></img>
        <h1>{story.title}</h1>
      </Link>
      <h4>{story.truncatedBody}</h4>
      <img src={story.author_image} className="author-small"></img>
      <h5>{story.author_name}</h5>
      <h6>{story.read_time}</h6>
    </div>
    <Route path="/api/stories/:storyId" component={StoryDetailContainer} story={ story } />
  </div>
);

export default StoryFeedItem;
