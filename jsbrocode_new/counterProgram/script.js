const tambah = document.getElementById("tambah"); //membuat variabel dengan memanggil id index dari html
const reset = document.getElementById("reset");
const kurang = document.getElementById("kurang");
const countLabel = document.getElementById("countLabel");
let count = 0;

tambah.onclick = function() {
    count ++; // berfungsi untuk menambah angka setiap kali tombol ditambahkan
    countLabel.textContent = count //untuk menampilkan hasilnya dengan mengubah text label dari html
}
reset.onclick = function() {
    count = 0
    countLabel.textContent = count
}
kurang.onclick = function() {
    count --; // berfungsi untuk mengurangi angka setiap kali tombol dikurangkan
    countLabel.textContent = count
}

// TITTLE: Penjelasan
/* 
pada line 1 - 5 membuat variabel untuk setiap index html agar mempremudah ketika dipanggil di javascript
kemudian membuat function untuk setiap button yang ada di html agar ketika button di klik maka akan menambahkan 
atau mengurangi nilai count dan menampilkan nilai count di label countLabel.
*/