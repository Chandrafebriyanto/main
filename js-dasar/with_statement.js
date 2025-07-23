const console = require("console");

const person = {
    firstName: "John",
    lastName: "Doe",
}
with (person) {
    console.log(firstName); // John
    console.log(lastName); // Doe
    console.log(`${firstName} ${lastName}`); // John Doe
}