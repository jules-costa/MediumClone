| USERS           |           |                           |
|-----------------|-----------|---------------------------|
| column name     | data type | details                   |
| id              | integer   | not null, primary key     |
| username        | string    | not null, indexed, unique |
| email           | string    | not null, indexed, unique |
| password_digest | string    | not null                  |
| session_token   | string    | not null, indexed, unique |
| biography       | text      | not null                  |
| image_url       | string    |                           |


| STORIES     |           |                       |
|-------------|-----------|-----------------------|
| column name | data type | details               |
| id          | integer   | not null, primary key |
| title       | string    | not null, unique      |
| body        | text      | not null              |
| author_id   | integer   | not null, indexed     |
| image_url   | string    | not null              |
| read_time   | string    | not null              |
| topic_id    | integer   | not null, indexed     |


| COMMENTS     |           |                       |
|--------------|-----------|-----------------------|
| column name  | data type | details               |
| id           | integer   | not null, primary key |
| author_id    | integer   | not null, indexed     |
| story_id     | integer   | not null, indexed     |
| body         | text      | not null              |


| TOPICS     |           |                       |
|--------------|-----------|-----------------------|
| column name  | data type | details               |
| id           | integer   | not null, primary key |
| title        | string    | not null, indexed     |


| LIKES       |           |                       |
|-------------|-----------|-----------------------|
| column name | data type | details               |
| id          | integer   | not null, primary key |
| user_id     | integer   | not null, indexed     |
| story_id    | integer   | not null, indexed     |



| FOLLOWS       |           |                       |
|---------------|-----------|-----------------------|
| column name   | data type | details               |
| id            | integer   | not null, primary key |
| follower_id   | integer   | not null, indexed     |
| followee_id   | integer   | not null, indexed     |
