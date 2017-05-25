import React from 'react';

import CommentItem from './comment_item';

class Comments extends React.Component {
  constructor(props) {
    super(props);
  }

  render() {
    if (this.props.comments === undefined) {
      return <div></div>;
    } else {
      return(
        <section className="comments-list">
          {Object.keys(this.props.comments).reverse().map(
            (key, i) => <CommentItem
            key={this.props.comments[key].id}
            comment={this.props.comments[key]}
            currentUser={this.props.currentUser}
            destroyComment={this.props.destroyComment}
            updateComment={this.props.updateComment}
            />)}
          </section>
        );
    }
  }
}


export default Comments;
