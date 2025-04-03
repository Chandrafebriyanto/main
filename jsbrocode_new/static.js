//static adalah file javascript yang digunakan untuk menampung semua javascript yang digunakan pada website ini dan mengatur semua javascript yang digunakan pada website ini

// class MatUtils{
//     static PI = 3.14159265358979323846;

//     static getDiameter(radius){
//         return radius * 2;
//     }

//     static getCircumference(radius){
//         return 2 * this.PI * radius;
//     }

//     static getArea(radius){
//         return this.PI * radius * radius;
//     }
// }

// console.log(MatUtils.PI);
// console.log(MatUtils.getDiameter(5));
// console.log(MatUtils.getCircumference(5).toFixed(2));
// console.log(MatUtils.getArea(5).toFixed(2));

//example 2
class person{
    static personCount = 0;

    constructor(name){
        this.name = name;
        person.personCount++;
    }

    sayHello(){
        console.log(`Hello, my name is ${this.name}`);
    }
}

let person1 = new person("John");
let person2 = new person("Doe");
let person3 = new person("Jane");

person1.sayHello();
person2.sayHello();
person3.sayHello();
console.log(`person total: ${person.personCount} people`);