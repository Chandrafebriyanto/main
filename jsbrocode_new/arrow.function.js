//arrow function adalah fungsi yang ditulis dengan sintaksis yang lebih ringkas
//dan lebih mudah dibaca

// arrow deklarasi
function name3() {
  console.log("Hello World");
}
name3();

//arrow function
const name1 = () => {
  console.log("Hello World");
};
name1();

//sama dengan function expression
const name2 = function () {
  console.log("Hello World");
};
name2();

setTimeout(() => {
  console.log("Hello");
  console.log("Goodbye");
}, 3000);
//setTimeout adalah fungsi yang digunakan untuk menunda eksekusi kode selama waktu tertentu

const squares = numbers.map((element) => Math.pow(element, 2));
const cubes = numbers.map((element) => Math.pow(element, 3));
const evenNums = numbers.filter((element) => element % 2 === 0);
const oddNums = numbers.filter((element) => element % 2 !== 0);
const total = numbers.reduce((accumulator, element) => accumulator + element);

console.log(total);