// callback = a function that is passed as an argument
//                    to another function.

//                    used to handle asynchronous operations:
//                    1. Reading a file
//                    2. Network requests
//                    3. Interacting with databases

//                    "Hey, when you're done, call this next."

// hello(goodbye);

// function hello(callback){
//     console.log("Hello!");
//     callback();
// }

// function goodbye(){
//     console.log("Goodbye!");
// }


// callback adalah function yang dijalankan setelah function lain selesai dijalankan
function proses1(callback){
    // console.log("Proses 1 selesai dijalankan");
    setTimeout(function(){
        console.log("Proses 1 selesai dijalankan");
        callback();
    }, 2000);
}
function proses2(){
    console.log("proses satu sudah selesai proses, maka Proses 2 dijalankan");
}
proses1(proses2);

//example 3
function sum(callback, a, b){
    let result = a + b;
    callback(result);
}

function display(result){
    console.log(result);
}

sum(display, 5, 5);
