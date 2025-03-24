//filter adalah sebuah function yang digunakan untuk memfilter data array yang ada di dalam array
//filter akan mengembalikan array baru yang berisi data yang sudah difilter

//EXAMPLE 1
let numbers =[1,2,3,4,5,6,7,8,9,10];

function isEven(element){
    return element % 2 === 0;
}
let evenNumbers = numbers.filter(isEven);
console.log(evenNumbers);

function isOdd(element){
    return element % 2 !== 0;
}
let oddNumbers = numbers.filter(isOdd);
console.log(oddNumbers);

//EXAMPLE 2
let ages = [15, 16, 17, 18, 19, 20, 21];
function isAdult(element){
    return element >= 18;
}
let adults = ages.filter(isAdult);
console.log(adults);

function isTeen(element){
    return element < 18;
}
let teens = ages.filter(isTeen);
console.log(teens);

//EXAMPLE 3
let students = [
    {name: "John", age: 15},
    {name: "Jane", age: 16},
    {name: "Bob", age: 17},
    {name: "Alice", age: 18},
    {name: "Eve", age: 19},
    {name: "Kevin", age: 20},
    {name: "Sarah", age: 21},
];
function isAdult(element){
    return element.age >= 18;
}
let adultStudents = students.filter(isAdult);
console.log(adultStudents);