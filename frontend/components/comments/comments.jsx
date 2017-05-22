import React from 'react';

class Comments extends React.Component {
  constructor(props) {
    super(props);
  }

  // componentDidMount() {
  //   this.props.fetchStory()
  // }

  render() {
    return(
      <section className="comments-list">
        <h1>comments feed</h1>
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
