import { connect } from 'react-redux';
import { logout } from '../../actions/session_actions';
import HomeNavbar from './home_navbar';

const mapStateToProps = state => ({
  currentUser: state.currentUser,
  turnOff: Boolean(location.pathname === '/write') 
});

const mapDispatchToProps = dispatch => ({
  logout: () => dispatch(logout())
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(HomeNavbar);
