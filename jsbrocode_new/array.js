//tittle: array
//note:array adalah variabel yang menyimpan banyak nilai

let fruit = ["cary", "pineapple", "orange", "watermelon"]

// fruit.push("coconut");  //add an element in last element
// fruit.pop();            //removes last element
// fruit.unshift("mango"); //add element to first element
// fruit.shift();          //removes element from first element

// console.log(fruit) 
console.log(fruit[0]) 
console.log(fruit[1]) 
console.log(fruit[2]) 
console.log(fruit[3])
console.log(fruit[4])

let numOfFruit = fruit.length // menghitung banyak nilai pada array
let indexOfFruit = fruit.indexOf("watermelon"); //mencari index pada array

console.log(numOfFruit)
console.log(indexOfFruit)  //mencari index pada array

for(let i = 0; i < fruit.length; i++){
    console.log(fruit[i])
}
for(let i = fruit.length - 1; i >= 0; i--){
    console.log(fruit[i])
}

fruit.sort().reverse() //mengurutkan sesuai abjad

for(fruits of fruit){
    console.log(fruits)
}
