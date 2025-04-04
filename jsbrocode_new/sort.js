//sort adalah mengurutkan data dari yang terkecil ke yang terbesar atau sebaliknya
//sort adalah method yang ada di dalam array

let fruits = ["banana", "apple", "orange", "mango", "grape"];
let numbers = [5, 3, 8, 1, 4, 2, 7, 6, 9, 10];

fruits.sort(); // Mengurutkan array fruits secara ascending (A-Z)
numbers.sort((a, b) => b - a); // Mengurutkan array numbers secara descending (10-1)
// numbers.sort((a, b) => a - b); // Mengurutkan array numbers secara descending (1-10)

console.log(fruits);
console.log(numbers);

const people = [
  { name: "Spongebob", age: 20, IPK: 3.5 },
  { name: "Patrick", age: 25, IPK: 3.0 },
  { name: "Squidward", age: 30, IPK: 3.8 },
  { name: "Sandy", age: 28, IPK: 3.9 },
];

// Mengurutkan berdasarkan nama
// people.sort((a,b) => a.IPK - b.IPK); // Mengurutkan berdasarkan IPK
people.sort((a,b) => a.name.localeCompare(b.name)) // Mengurutkan berdasarkan nama


console.log(people);
