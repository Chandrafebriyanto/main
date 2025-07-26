// Function Generator adalah sebuah fungsi yang mengembalikan fungsi lain.
// Fungsi ini menerima parameter `nama` dan mengembalikan fungsi yang mencetak pesan

// CONTOH 1
function* createNames(){
    yield "agus";
    yield "budi";
    yield "cici";
}

const names = createNames();
// for (const name of names) {
//     console.log(name);
// }

console.log(names.next().value); // { value: 'agus', done: false }
console.log(names.next().value); // { value: 'budi', done: false }
console.log(names.next().value); // { value: 'cici', done: false }
console.log(names.next().value); // { value: undefined, done: true }


// CONTOH 2
function* buatGanjil(value){
    for (let i = 1; i <= value; i ++) {
        if (i % 2 !== 0) {
            yield i;
        }
    }
}

const ganjils = buatGanjil(100);
// for (const ganjil of ganjils) {
//     console.log(ganjil);
// }