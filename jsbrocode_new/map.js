//map() adalah method yang digunakan untuk melakukan perulangan pada array
//map() mengembalikan nilai array baru

//contoh penggunaan map()
//example 1
const number = [1, 2, 3, 4, 5];
function cube(element) {
    return Math.pow(element, 3); 
}
const cubeNumber = number.map(cube); 
console.log(cubeNumber);

//example 2
const fruit = ['apple', 'banana', 'mango', 'orange', 'grape'];
function map(element) {
    return element.toUpperCase();
}
const upperFruit = fruit.map(map);
console.log(upperFruit);

//example 3
const numbers = [1, 2, 3, 4, 5];
function double(element){
    return element * 2;
}
const doubleNumber = numbers.map(double);
console.log(doubleNumber);

//example 4
const dates = ["2024-1-10", "2025-2-20", "2026-3-30"];
function formatDates(element){
    const parts = element.split("-");
    return `${parts[1]}/${parts[2]}/${parts[0]}`;
}
const formattedDates = dates.map(formatDates);
console.log(formattedDates);