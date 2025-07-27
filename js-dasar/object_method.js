// object method adalah membuat function yang ada di dalam object

// CARA 1
const people = {
    name: "Abdul",
    sayhello: function() {
        console.log("Hello, my name is " + this.name);
    }
}

// CARA 2
const person = {
    name: "Jonny",
}
person.sayhello = function() {
    console.log("Hello, my name is " + this.name);
}


person.sayhello()
people.sayhello()