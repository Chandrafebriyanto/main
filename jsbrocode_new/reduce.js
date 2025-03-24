//reduce adalah sebuah function yang digunakan untuk mengurangi data array yang ada di dalam array
//reduce akan mengembalikan nilai tunggal

//EXAMPLE 1
const price = [1000, 2000, 3000, 4000, 5000];
const total = price.reduce(getTotal);
console.log(total);

function getTotal(accumulator, element){
    return accumulator + element;
}

//EXAMPLE 2
const grades = [90, 85, 70, 80, 95];
const maximum = grades.reduce(getMaximum);
console.log(maximum);

function getMaximum(accumulator, element){
    return Math.max(accumulator, element);
}