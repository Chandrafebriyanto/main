//object adalah tipe data yang dapat menyimpan banyak nilai
//object juga bisa menyimpan array, function, dan object lain di dalamnya
//object adalah tipe data yang paling kompleks di javascript

const person1 ={
    firstName: "spongebob",
    lastName: "squarepants",
    age: 20,
    isEmployed: true,
    sayHello: () => {console.log("hello")}, //function di dalam object
}

console.log(person1.firstName) //spongebob
console.log(person1.lastName) //squarepants
console.log(person1.age) //20
console.log(person1.isEmployed) //true
person1.sayHello() //hello


const person2 ={
    firstName: "patrick",
    lastName: "star",
    age: 25,
    isEmployed: false,
    sayBye: () => {console.log("bye")}, //function di dalam object
}

console.log(person2.firstName) //patrick
console.log(person2.lastName) //star
console.log(person2.age) //25
console.log(person2.isEmployed) //false
person2.sayBye() //bye
