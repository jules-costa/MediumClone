import React from 'react';

const CommentItem = ({ comment }) => (
  <section className="comment-container">
    <section className="comment-author-details">
      <img className="comment-author-image"src={comment.author_image}></img>
      <h5 className="comment-author-name">{comment.author_name}</h5>
    </section>
    <div>
      <h5 className="comment-body">{comment.body}</h5>
    </div>
  </section>
);


export default CommentItem;
