//set time out adalah fungsi yang digunakan untuk mengeksekusi kode setelah waktu tertentu
//setTimeout(function, delay, param1, param2, ...)

//function = fungsi yang akan dieksekusi setelah delay
//delay = waktu dalam milisecond

//EXAMPLE 1
function sayHello() {
    console.log("Hello, World! 1");
}

setTimeout(sayHello, 2000); //fungsi sayHello akan dieksekusi setelah 2 detik

//EXAMPLE 2
setTimeout( () => {console.log("Hello, World! 2")}, 3000);