import React from 'react';
import { Link } from 'react-router-dom';
import { Route } from 'react-router-dom';
import StoryDetailContainer from './story_detail_container';

const filterContent = story => {
  if (story.size !== 0) {
    return (
      <section className={`feed-item-image-${story.size}`}>
        <Link to={`/stories/${story.id}`}>
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
      <section>
        <Link to={`/stories/${story.id}`}>
          <h1 className="item-title">{story.title}</h1>
        </Link>
        <h4 className={`item-body-${story.size}`}>{story.truncatedBody}</h4>
      </section>
      <section className="item-author">
        <Link to={`/users/${story.author_id}`}>
          <img src={story.author_image} className="item-author-img"></img>
        </Link>
        <div className="item-author-name-read-time">
          <Link to={`/users/${story.author_id}`}>
            <h5 className="item-author-name">{story.author_name}</h5>
          </Link>
          <h6 className="item-read-time">{story.read_time}</h6>
        </div>
      </section>
    </section>
  </div>
);

export default StoryFeedItem;
