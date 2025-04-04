//nested objek adalah objek yang ada di dalam objek lain

//EXAMPLE 1
let person = {
    fullname: "Spongebob Squarepants",
    age: 20,
    isStudent: true,
    hobbies: ["karate", "jellyfishing", "cooking"],
    address: {
        street: "123 Bikini Bottom",
        city: "Bikini Bottom",
        country: "Atlantis"
    },
}

// console.log(person.fullname);
// console.log(person.age);
// console.log(person.isStudent);
// console.log(person.hobbies[0]);
// // console.log(person.address.street);
// // console.log(person.address.city);
// // console.log(person.address.country);

// for (const property in person.hobbies) {
//     console.log("hobbi:" + person.hobbies[property]);
// };

// for(const property in person.address){
//     console.log(person.address[property]);
// };

//EXAMPLE 2
class person2 {

    constructor(name, age, ...address) {
        this.name = name;
        this.age = age;
        this.address = new Address(...address);
    }
}

class Address {
    constructor(street, city, country) {
        this.street = street;
        this.city = city;
        this.country = country;
    }
}

const people = new person2("Spongebob Squarepants", 20, "123 Bikini Bottom", "Bikini Bottom", "Atlantis");

const people2 = new person2("Patrick Star", 25, "123 Bikini Bottom", "Bikini Bottom", "Atlantis");

const people3 = new person2("Squidward Tentacles", 30, "123 Bikini Bottom", "Bikini Bottom", "Atlantis");

// console.log(people.name);
// console.log(people.age);
// console.log(people.address.street);
// console.log(people.address.city);
// console.log(people.address.country);

console.log(people);
console.log(people2);
console.log(people3);

