//console.time adalah fungsi yang digunakan untuk memulai pengukuran waktu eksekusi kode.

//EXAMPLE 1
console.time("loop");
for (let i = 0; i < 100000000; i++) {
    // kode yang ingin diukur waktu eksekusinya
}
console.timeEnd("loop");


//EXAMPLE 2
function loadData(){
    console.time("loadData");
    // Simulasi pemanggilan data dari server
    for (let i = 0; i < 100000000; i++) {
        // kode yang ingin diukur waktu eksekusinya
    }
    console.timeEnd("loadData");
}
loadData();


//EXAMPLE 3
function prosesData(){
    console.time("prosesData");
    // Simulasi pemrosesan data
    for (let i = 0; i < 100000000; i++) {
        // kode yang ingin diukur waktu eksekusinya
    }
    console.timeEnd("prosesData");
}
prosesData();