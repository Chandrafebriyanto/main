// clouser adalah fungsi yang memiliki akses ke variabel di lingkup leksikalnya, bahkan setelah fungsi tersebut dieksekusi di luar lingkup tersebut.
// Contoh clouser yang mengembalikan fungsi yang mencetak pesan dengan nama yang diberikan.
function createGreeting(nama) {
    console.log("Fungsi createGreeting telah dipanggil");
    
    return function() {
        console.log(`Halo, ${nama}!`);
    };
}

// Menggunakan clouser untuk membuat fungsi greeting
const greetAgus = createGreeting("Agus");
const greetBudi = createGreeting("Budi");

// Memanggil fungsi greeting yang dikembalikan oleh clouser
greetAgus(); // Halo, Agus!
greetBudi(); // Halo, Budi!