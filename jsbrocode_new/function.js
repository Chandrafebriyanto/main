// function = A section of reusable code.
//                    Declare code once, use it whenever you want.
//                    Call the function to execute that code.

function happyBirthday(username, age){
    console.log(`Happy birthday to you!`);
    console.log(`Happy birthday to you!`);
    console.log(`Happy birthday dear, ${username}`);
    console.log(`Happy birthday to you!`);
    console.log(`You are ${age} years old!`);
}
happyBirthday('candra', 20)

function add(x, y){
    return x + y;
}
console.log(add(10, 5));

function subtract(x, y){
    return x - y;
}
console.log(subtract(1, 5))

function multiply(x, y){
    return x * y;
}
console.log(multiply(5, 2))

function divide(x, y){
    return x / y;
}
console.log(divide(4,2))

function isEven(number){
    return number % 2 === 0;
}
console.log(isEven(10));

function isValidEmail(email){

    return !!email.includes("@");
}
console.log(isValidEmail("Bro@fake.com"));