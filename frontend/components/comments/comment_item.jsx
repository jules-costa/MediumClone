import React from 'react';
import { Link } from 'react-router-dom';

class CommentItem extends React.Component {
  constructor(props) {
    super(props);
    this.handleDelete = this.handleDelete.bind(this);
  }

  displayOptions(comment, currentUser) {
    if (currentUser.id === comment.author_id) {
      return (
        <div className="alter-links">
          <button className="delete" onClick={this.handleDelete(comment.id, comment.story_id)}>Delete</button>
        </div>
      );
    }
  }

  handleDelete(id, storyId) {
    return () => this.props.destroyComment(id, storyId);
  }


  render() {
    const { comment, currentUser } = this.props;
    return(
      <section className="comment-container">
        <section className="comment-author-details">
          <img className="comment-author-image" src={comment.author_image}></img>
          <h5 className="comment-author-name">{comment.author_name}</h5>
        </section>
        <div>
          <h5 className="comment-body">{comment.body}</h5>
        </div>
        {this.displayOptions(comment, currentUser)}
      </section>
    );
  }
}


export default CommentItem;
