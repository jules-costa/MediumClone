import { connect } from 'react-redux';
import SessionForm from './session_form';
import { login, signup } from '../../actions/session_actions';

const mapStateToProps = (state, ownProps) => ({
  loggedIn: (state.currentUser ? true : false),
  errors: state.errors,
  formType: (ownProps.location.pathname === '/login' ? 'login' : 'signup')
});

const mapDispatchToProps = (dispatch, ownProps) => ({
  processForm: (user) => dispatch(
    (ownProps.location.pathname === '/login' ? login(user) : signup(user))
  )
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(SessionForm);
