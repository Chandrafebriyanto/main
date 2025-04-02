//this adalah keyword yang digunakan untuk merujuk pada objek saat ini

const person = {
  name: "spongebob",
  age: 25,
  favFood: "krabby patty",
  greet: function () {
    console.log(`Hello, my name is ${this.name}`);
  },
  sayfood: function () {
    console.log(`My favorite food is ${this.favFood}`);
  },
};

person.greet();
person.sayfood();