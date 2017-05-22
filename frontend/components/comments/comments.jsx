import React from 'react';

import CommentItem from './comment_item';

class Comments extends React.Component {
  constructor(props) {
    super(props);
  }


  render() {
    return(
      <section className="comments-list">
        {Object.keys(this.props.comments).map((key, i) => <CommentItem key={this.props.comments[key].id} comment={this.props.comments[key]} />)}
      </section>
    );
  }
}


export default Comments;

// {this.props.story.comments.map((comment, i) =>
//   <li>
//     {comment.author.image_url}
//     {comment.author.username}
//     {comment.body}
//   </li>
// )}
