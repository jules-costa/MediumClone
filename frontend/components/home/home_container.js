import { connect } from 'react-redux';
import StoriesFeed from './stories_feed';
// import { signup, login } from '../../actions/session_actions';

// for now, just pass in props to render home navbar in storiesFeed

const mapStateToProps = (state, { currentUser }) => ({

});

const mapDispatchToProps = dispatch => ({

});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(StoriesFeed);
