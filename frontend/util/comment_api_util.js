export const createComment = (comment, storyId) => (
  $.ajax({
    method: 'POST',
    url: `api/stories/${storyId}/comments`,
    data: {comment}
  })
);

export const updateComment = (comment, storyId) => (
  $.ajax({
    method: 'PATCH',
    url: `api/stories/${storyId}/comments/${comment.id}`,
    data: {comment}
  })
);

export const destroyComment = (commentId, storyId) => (
  $.ajax({
    method: 'DELETE',
    url: `api/stories/${storyId}/comments/${commentId}`,
    data: {commentId}
  })
);
