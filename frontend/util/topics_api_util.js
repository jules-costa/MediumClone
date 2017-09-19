export const fetchTopics = () => (
  $.ajax({
    method: 'GET',
    url: 'api/topics'
  })
);

export const fetchTopic = (title) => (
  $.ajax({
    method: 'GET',
    url: `api/topics/:id`
  })
)
