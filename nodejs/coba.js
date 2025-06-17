const username = (name, age) => `my name is ${name} and my age is ${age} years old`
// console.log(username('agus', `21`))

const PI= 3.14;

const mahasiswa = {
    nama: 'agus',
    umur: 21,
    cetakMhs() {
        return `nama saya ${this.nama} dan umur saya ${this.umur} tahun`
    }
}

class Orang {
    constructor() {
        console.log('objek orang telah dibuat');
    }

}

// module.exports.username = username;
// module.exports.PI = PI;
// module.exports.mahasiswa = mahasiswa;
// module.exports.Orang = Orang;

module.exports = {
    username,
    PI,
    mahasiswa,
    Orang

}