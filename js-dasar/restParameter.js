// rest parameter adalah fitur yang memungkinkan kita untuk mengumpulkan argumen yang tidak diketahui jumlahnya menjadi sebuah array.
// Fitur ini sangat berguna ketika kita ingin membuat fungsi yang dapat menerima jumlah argumen yang bervariasi.

// Contoh penggunaan rest parameter:
function sum(name, ...data){
    let total = 0;
    for (const item of data) {
        total += item;
    }
    console.log(`Total ${name} : ${total}`);
}

// panggilan fungsi dengan rest parameter
sum("Nilai Alpro", 10, 20, 30, 40, 50);

// panggilan fungsi dengan rest parameter menggunakan spread operator
// spread operator digunakan untuk menyebarkan elemen dari array menjadi argumen terpisah
const value = [10,20,30,40,50];
sum("Nilai Matkom", ...value);