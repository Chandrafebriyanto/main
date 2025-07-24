// nested functions adalah konsep di mana sebuah fungsi didefinisikan di dalam fungsi lain.
// Konsep ini memungkinkan kita untuk mengorganisir kode dengan lebih baik dan mengakses variabel dari fungsi luar di dalam fungsi dalam.

// Contoh penggunaan nested functions:
function outer(test){

    function inner(){
        console.log("Ini adalah fungsi dalam " + test);
    }
    inner();
    console.log("Ini adalah fungsi luar " + test + " yang memanggil fungsi dalam.");
}

outer("test");