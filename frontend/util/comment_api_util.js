export const createComment = comment => (
  $.ajax({
    method: 'POST',
    url: `api/stories/${story.id}/comments`,
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
