

function UserGreeting(props) {
    return(props.isLoggedIn ? <h1 className="welcome-message">Welcome back, {props.username}!</h1> : <h1 className="login-prompt">Please sign up.</h1>);
}

export default UserGreeting;