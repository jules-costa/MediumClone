import React from 'react';
import { Link } from 'react-router-dom';

const TopicsListItem = ({ topic }) => (
  <Link className="topic-link" to={`topics/${topic.id}`}>
    <div className="topic-link">{topic.title}</div>
  </Link>
);

export default TopicsListItem;
