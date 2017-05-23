import React from 'react';
import { Link } from 'react-router-dom';
import { updateComment, destroyComment } from '../../actions/story_actions';

// const handleEdit = (comment) => {
//   updateComment(comment);
// };
//
// const handleDelete = (id) => {
//   destroyComment(id);
// };

const CommentItem = ({ comment, currentUser }) => (
  <section className="comment-container">
    <section className="comment-author-details">
      <img className="comment-author-image" src={comment.author_image}></img>
      <h5 className="comment-author-name">{comment.author_name}</h5>
    </section>
    <div>
      <h5 className="comment-body">{comment.body}</h5>
    </div>
    <div className="alter-links">
      <Link to={`/api/comments/${comment.id}`} className="edit-comment">Edit</Link>
      <Link to={`/api/comments/${comment.id}`} className="delete-comment">Delete</Link>
    </div>
  </section>
);


export default CommentItem;
