/* 
note: Scope menentukan di mana variabel dapat diakses dalam kode. Ada dua jenis scope: global dan local. Global scope: variabel yang dideklarasikan di luar fungsi dapat diakses di mana saja. Local scope: variabel yang dideklarasikan di dalam fungsi hanya dapat diakses di dalam fungsi tersebut.
*/

// tittle: Contoh Global Scope
let counter = 0; // Variabel global

function hitme(){
    counter++ // Mengakses variabel global
}

hitme();
hitme();
console.log(counter); // Output: 2


// tittle: contoh scope dalam nested function
function outer(){
    let counter = 0; // Variabel lokal di dalam outer

    function inner(){
        counter++; // Mengakses variabel lokal di dalam outer
        console.log(counter);
    }
    inner();
}

outer(); // Output: 1