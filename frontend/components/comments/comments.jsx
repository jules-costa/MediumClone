import React from 'react';

import CommentItem from './comment_item';

class Comments extends React.Component {
  constructor(props) {
    super(props);
  }


  render() {
    return(
      <section className="comments-list">
        {Object.keys(this.props.comments).map((key, i) => <CommentItem key={this.props.comments[key].id} comment={this.props.comments[key]} currentUser={this.props.currentUser} />)}
      </section>
    );
  }
}


export default Comments;
