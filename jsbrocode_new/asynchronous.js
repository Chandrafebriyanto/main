//asynchronous adalah satu cara untuk mengeksekusi kode secara bersamaan
//synchrounous adalah satu cara untuk mengeksekusi kode secara berurutan

//contoh 1
// ASYNCHRONOUS
function func1(callback){
    setTimeout(() => {console.log("Task 1");
                                    callback()}, 3000);
}

// SYNCHRONOUS
function func2(){
    console.log("Task 2");
    console.log("Task 3");
    console.log("Task 4");
}
func2()
console.log("");
func1(func2);
