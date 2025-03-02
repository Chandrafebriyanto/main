// let num = 0;

//example 1
// let username = "candra"
//
// while(username === ""){
//     username = window.prompt("Enter your name");
// }
//
// console.log(`hello ${username}`);

//example 2
num = 10
while (num < 10){
    console.log(`hello world ${num}`);
    num ++
}

for (let i = 0; i < num; i++) {
    console.log(i)
}

//example 3
let login = false;
let username;
let password;

while (!login){
    username = prompt("Please enter your name");
    password = prompt("Please enter your password");
    if (username === "username" || password === "password"){
        loggin = true;
        console.log(`welcome back your account ${username}`);
    }
    else{
        console.log("try again")
    }
}
// //example 4
// while(num<5){
//     for(let i=1; i<=5; i++){
//         console.log(`hello world ${i}`);
//     }
//     num += 1
// }