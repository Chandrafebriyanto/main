//cunstructor adalah constructor function yang digunakan untuk membuat object

function car(make, model, year, color) {
    this.make = make;
    this.model = model;
    this.year = year;
    this.color = color;
    this.drive = function(){console.log(`you're driving a ${this.make} ${this.model}`)}
}

const car1= new car("Toyota", "Corolla", 2020, "Red");
const car2= new car("Honda", "Civic", 2021, "Blue");
const car3= new car("Nissan", "GTR", 2022, "Black");


// console.log(car1.make); 
// console.log(car1.model); 
// console.log(car1.year); 
// console.log(car1.color); 

// console.log(car2.make); 
// console.log(car2.model); 
// console.log(car2.year); 
// console.log(car2.color); 

// console.log(car3.make); 
// console.log(car3.model); 
// console.log(car3.year); 
// console.log(car3.color); 
//object diatas adalah object yang dibuat dengan constructor function

car1.drive(); 
car2.drive(); 
car3.drive(); 
//method drive adalah method yang ada di dalam constructor function car