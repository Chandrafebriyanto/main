import PropTypes from 'prop-types';

function UserGreeting({ isLoggedIn = false, username = 'Guest' }) {

    const welcomeMessage = <h1 className="welcome-message">Welcome back, {username}!</h1>;
    const loginPrompt = <h1 className="login-prompt">Please sign up.</h1>;

    return(isLoggedIn ? welcomeMessage : loginPrompt);
}

UserGreeting.propTypes = {
  isLoggedIn: PropTypes.bool.isRequired,
  username: PropTypes.string,
};


export default UserGreeting;