import React from 'react';
import { Link } from 'react-router-dom';
import { Route } from 'react-router-dom';
import StoryDetailContainer from './story_detail_container';

const StoryFeedItem = ({ story }) => (
  <div className={`story-square-${story.size}`}>
    <section className="feed-item-image">
      <Link to={`/api/stories/${story.id}`}>
        <img src={story.image}></img>
      </Link>
    </section>
    <section className="feed-item-content">
      <Link to={`/api/stories/${story.id}`}>
        <h1 className="item-title">{story.title}</h1>
      </Link>
      <h4 className="item-truncatedBody">{story.truncatedBody}</h4>
      <img src={story.author_image} className="author-small"></img>
      <h5>{story.author_name}</h5>
      <h6>{story.read_time}</h6>
    </section>
  </div>
);

export default StoryFeedItem;
