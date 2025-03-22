//foreach adalah method yang digunakan untuk melakukan perulangan pada array
//foreach tidak mengembalikan nilai apapun
//foreach tidak mengubah nilai array aslinya
//foreach tidak bisa digunakan untuk object
//foreach tidak bisa digunakan untuk menghentikan perulangan

//contoh penggunaan foreach
//example 1
const number = [1, 2, 3, 4, 5];
function cube(element, index, array) {
    array[index] = Math.pow(element, 3);
}
number.forEach(cube);
number.forEach(display);

//example 2
const fruit = ['apple', 'banana', 'mango', 'orange', 'grape'];
function foreach(element, index, array) {
    array[index] = element.toUpperCase();
}
fruit.forEach(foreach);
fruit.forEach(display);


function display(element) {
    console.log(element);
}


// forEach() = method used to iterate over the elements 
//                     of an array and apply a specified function (callback)
//                     to each element

//                     array.forEach(callback)
//                     element, index, array are provided

// -------------- EXAMPLE 1 --------------

const numbers = [1, 2, 3, 4, 5];

numbers.forEach(cube);
numbers.forEach(display);

function double(element, index, array){
    array[index] = element * 2;
}

function triple(element, index, array){
    array[index] = element * 3;
}

function square(element, index, array){
    array[index] = Math.pow(element, 2);
}

function cube(element, index, array){
    array[index] = Math.pow(element, 3);
}

function display(element){
    console.log(element);
}

// // -------------- EXAMPLE 2 --------------

let fruits = ["apple", "orange", "banana", "coconut"];

fruits.forEach(capitalize);
fruits.forEach(display);

function upperCase(element, index, array){
    array[index] = element.toUpperCase();
}

function lowercase(element, index, array){
    array[index] = element.toLowerCase();
}

function capitalize(element, index, array){
    array[index] = element.charAt(0).toUpperCase() + element.slice(1);
}

function display(element){
    console.log(element);
}
