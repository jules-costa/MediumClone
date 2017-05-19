import React from 'react';
import { Link } from 'react-router-dom';
import { Route } from 'react-router-dom';
import StoryDetailContainer from './story_detail_container';

const filterContent = story => {
  if (story.size !== 0) {
    return (
      <section className={`feed-item-image-${story.size}`}>
        <Link to={`/api/stories/${story.id}`}>
          <img src={story.image}></img>
        </Link>
      </section>
    );
  }
};

const StoryFeedItem = ({ story }) => (
  <div className={`story-square-${story.size}`}>
      {filterContent(story)}
    <section className={`feed-item-content-${story.size}`}>
      <Link to={`/api/stories/${story.id}`}>
        <h1 className="item-title">{story.title}</h1>
      </Link>
      <h4 className={`item-body-${story.size}`}>{story.truncatedBody}</h4>
      <section className="item-author">
        <img src={story.author_image} className="item-author-img"></img>
        <div className="item-author-name-read-time">
          <h5 className="item-author-name">{story.author_name}</h5>
          <h6 className="item-read-time">{story.read_time}</h6>
        </div>
      </section>
    </section>
  </div>
);

export default StoryFeedItem;
