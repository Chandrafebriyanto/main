const myage = document.getElementById("myage") //membuat variabel untuk memanggil id myage di html
const agebtn = document.getElementById("agebtn") //membuat variabel untuk memanggil id agebtn di html
const info = document.getElementById("info") //membuat variabel untuk memanggil id info di html
let age; //membuat variabel untuk menyimpan nilai umur yang diinputkan user

agebtn.onclick = function(){
    age = myage.value; //menyimpan nilai yang sudah di input user dari variabel myage
    age = Number(age) //dikonversikan ke tipe data number
    if (age >= 35){
        info.textContent = `kamu terlalu tua`
    }
    else if(age >= 18){
        info.textContent = `kamu adalah seorang remaja`
    }
    else if(age < 0){
        info.textContent = `umur tidak boleh kurang dari 0`
    }
    else if(age < 18){
        info.textContent = `kamu masih terlalu kecil`
    }
}