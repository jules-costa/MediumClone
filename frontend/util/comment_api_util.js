export const createComment = (comment, storyId) => (
  $.ajax({
    method: 'POST',
    url: `api/stories/${storyId}/comments`,
    data: {comment}
  })
);

export const updateComment = comment => (
  $.ajax({
    method: 'PATCH',
    url: `api/comments/${comment.id}`,
    data: {comment}
  })
);

export const destroyComment = id => (
  $.ajax({
    method: 'DELETE',
    url: `api/comments/${id}`
  })
);
