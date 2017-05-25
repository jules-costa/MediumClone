import * as TopicsAPIUtil from '../util/topics_api_util';

export const RECEIVE_TOPICS = "RECEIVE_TOPICS";

export const receiveAllTopics = topics => ({
  type: RECEIVE_TOPICS,
  topics
});

export const fetchTopics = () => dispatch => (
  TopicsAPIUtil.fetchTopics().then(topics => dispatch(receiveAllTopics(topics)))
);
