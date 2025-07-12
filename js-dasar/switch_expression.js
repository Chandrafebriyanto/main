const nilai = "G"

switch (nilai){
    case 'A':
        console.log("anda memasukan nilai A")
        break;
    case 'B':
        console.log("anda memasukan nilai B")
        break;
    case 'C':
    case 'D':
        console.log("anda memasukan nilai C atau D")
        break;
    default:
        console.log("Nilai tidak ditemukan")
        break;

}