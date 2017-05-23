export const fetchProfile = id => (
  $.ajax({
    method: 'GET',
    url: `api/users/${id}`
  })
);

export const updateProfile = user => (
  $.ajax({
    method: 'PATCH',
    url: `api/users/${user.id}`,
    data: {user}
  })
);
