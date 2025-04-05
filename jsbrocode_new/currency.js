//.toLocaleString() adalah method yang digunakan untuk mengubah angka menjadi format string dengan pemisah ribuan dan desimal sesuai dengan locale yang ditentukan.
// Contoh penggunaan:
const number = 123456.789;

// Menggunakan .toLocaleString() untuk format angka
console.log(number.toLocaleString('en-US')); // Output: "1,234,567.89"
console.log(number.toLocaleString('id-ID')); // Output: "1.234.567,89"
console.log(number.toLocaleString('de-DE')); // Output: "1.234.567,89"
console.log("---------------------------------");

// Menggunakan .toLocaleString() untuk format mata uang
console.log(number.toLocaleString('en-US', {style: "currency", currency: "USD"}));
console.log(number.toLocaleString('id-ID', {style: "currency", currency: "IDR"}));
console.log(number.toLocaleString('de-DE', {style: "currency", currency: "EUR"}));