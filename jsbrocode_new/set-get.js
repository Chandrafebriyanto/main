//get adalah metode agar properti bisa dibaca
//set adalah metode agar properti bisa ditulis

//EXAMPLE 1
// class rectangle{

//     constructor(width, height){
//         this.width = width;
//         this.height = height;
//     }

//     set width(newWidth){
//         if(newWidth > 0){
//             this._width = newWidth
//         }
//         else{
//             console.error(`Width must be a positive number`)
//         }
//     }

//     set height(newHeight){
//         if(newHeight > 0){
//             this._height = newHeight
//         }
//         else{
//             console.error(`Height must be a positive number`)
//         }
//     }

//     get width(){
//         return this._width;
//     }

//     get height(){
//         return this._height
//     }

//     get area(){
//         return this._height * this._width
//     }
// }

// const Rectangle = new rectangle(5, 6);
// console.log(Rectangle.width);
// console.log(Rectangle.height);
// console.log(Rectangle.area);

//EXAMPLE 2
class Person{

    constructor(firstName, lastName, age){
        this.firstName = firstName;
        this.lastName = lastName;
        this.age = age;
    }

    set firstName(newFirstName){
        if(typeof newFirstName === "string" && newFirstName.length > 0){
            this._firstName = newFirstName
        }
        else{
            console.error(`first name must be a string`)
        }
    }

    set lastName(newLastName){
        if(typeof newLastName === "string" && newLastName.length > 0){
            this._lastName = newLastName
        }
        else{
            console.error(`last name must be a string`)
        }
    }

    set age(newAge){
        if(typeof newAge === "number" && newAge > 0){
            this._age = newAge
        }
        else{
            console.error(`Age must be a positive number and type of number`)
        }
    }

    get firstName(){
        return this._firstName
    }
    
    get lastName(){
        return this._lastName
    }

    get fullName(){
        return this._firstName + " " + this._lastName
    }

    get age(){
        return this._age
    }

}

const person = new Person( `John`,`Wick`, 35)

console.log(person.firstName)
console.log(person.lastName)
console.log(person.fullName)
console.log(person.age)
