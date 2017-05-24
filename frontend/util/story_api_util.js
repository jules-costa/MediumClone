export const createStory = story => (
  $.ajax({
    method: 'POST',
    url: 'api/stories',
    data: {story}
  })
);

export const fetchStories = (topicId) => (
  $.ajax({
    method: 'GET',
    url: 'api/stories',
    data: {topicId}
  })
);

export const fetchStory = id => (
  $.ajax({
    method: 'GET',
    url: `api/stories/${id}`
  })
);

export const updateStory = story => (
  $.ajax({
    method: 'PATCH',
    url: `api/stories/${story.id}`,
    data: {story}
  })
);

export const destroyStory = id => (
  $.ajax({
    method: 'DELETE',
    url: `api/stories/${id}`
  })
);

export const fetchLikedStories = id => (
  $.ajax({
    method: 'GET',
    url: 'api/likes',
    data: {id}
  })
);

export const fetchRecommendedStories = id => (
  $.ajax({
    method: 'GET',
    url: 'api/follows',
    data: {id}
  })
);
