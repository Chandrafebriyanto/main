//tittle: user input
let usernameinput;
let prompt1;

// note:input user
document.getElementById("mySubmit").onclick = function () {
  usernameinput = document.getElementById("myText").value;
  console.log(usernameinput);
  document.getElementById("header").textContent = `hello ${usernameinput}`;
};

// note:windows prompt
document.getElementById("prompt").onclick = function () {
  prompt1 = window.prompt(`hello, what's your name? `);
  console.log(`hello ${prompt1}`);
};
//note: fungsi dari document.getElementById adalah memanggil index elemen yang berada di dalam html sesuai dengan ID dari index tersebut kemudian untuk onclick digunakan sebagai perintah untuk menjalankan function

//tittle: convert data type
let str1 = "pizza";
let str2 = "pizza";
let str3 = "pizza";

x = Number(str1); // info:untuk mengubah data menjadi nilai integar/angka
y = String(str2); // info:untuk mengubah data menjadi nilai string/teks
z = Boolean(str3); // info: untuk mengubah data menjadi nilai boolean (true/false)

console.log(str1, typeof str1);
console.log(str2, typeof str2);
console.log(str3, typeof str3);
// note: default dari nilai variabel adalah string
// note: 1. jika nilai awal dari variabel adalah string kemudian diubah menjadi integer (number) maka hasil yang keluar adalah NaN atau tidak bisa
// note: 2. jika nilai awal dari variabel adalah string kemudian diubah menjadi boolean makah hasil yang keluar adalah "True"
// note: 3. jika nilai awal dari variabel adalah string kemudian diubah menjadi string maka hasil yang keluar adalah "pizza"

// tittle: const = a variable that can't be changed
const Pi = 3.14159;
let radius;
let circumference;

// info: Pi = 420.69;

document.getElementById("mySubmit").onclick = function () {
  radius = document.getElementById("myText").value;
  radius = Number(radius);
  circumference = 2 * Pi * radius;
  document.getElementById(
    "hasil"
  ).textContent = `Hasil dari Luas Lingkaran adalah : ${circumference}`;
};
//note:const adalah variabel yang tidak dapat dirubah/ nama variabel tidak boleh sama ketika ada varibael const yang sama maka program tidak akan bisa berjalan

// tittle: Math = built-in object that provides a
// note:collection of properties and methods
let x = -45;
let y = 2;
let z = 1;

console.log(Math.PI, "nilai Pi"); // info: menghasilkan nilai Pi
console.log(Math.E, "nilai euler number"); //info: menghasilkan nilai euler number

z = Math.round(x); //info: membulatkan nilai
z = Math.floor(x); //info: membulatkan kebawah
z = Math.ceil(x); //info: membulatkan keatas
z = Math.trunc(x); //info: menghilangkan bilangan desimal
z = Math.pow(x, y); //info: pangkat bilangan (x^y)
z = Math.sqrt(x); //info: akar kuadrat
z = Math.log(x); //info: log
z = Math.sin(x); //info: sin
z = Math.cos(x); //info: cos
z = Math.tan(x); //info: tan
z = Math.abs(x); //info: menghasilkan bilangan positif
z = Math.sign(x); //info: mengembalikan suatu angka (positif = 1, negatif = -1)
let max = Math.max(x, y, z); //info: menentukan nilai maximum dari variabel
let min = Math.min(x, y, z); //info: menentukan nilai minimum dari variabel

console.log(z);
console.log(max, "nilai maximum");
console.log(min, "nilai minumum");

// tittle: string methods = allow you to manipulate and work with text (strings)
let userName = "Bro Code";
let phoneNumber = "123-456-7890";

console.log(userName.length); //info:menghitung seluruh char pada string
console.log(userName.charAt(0)); //info:menampilkan huruf pada string 0 = huruf pertama pada string
console.log(userName.indexOf("o")); //info:menghitung letak huruf o berada di nomer berapa dari depan, output = 2
console.log(userName.lastIndexOf("o")); //info:menghitung letak huruf o terakhir berada di nomer berapa dari paling belakang belakang, output = 6
userName = userName.trim(); //info:menghapus spasi apapun
userName = userName.toUpperCase(); //info:mengubah menjadi huruf besar semua
userName = userName.toLowerCase(); //info:mengubah menjadi huruf kecil semua
userName = userName.repeat(3); //info:menulis ulang string sebanyak perintah
let result1 = userName.startsWith(" "); //info:meriksa apakah ada spasi/char pada awal string, output= false
let result2 = userName.endsWith(" "); //info:meriksa apakah ada spasi/char pada akhir string, output= false
let result3 = userName.includes(" "); //info:meriksa apakah ada spasi/char pada tengah string, output= false
phoneNumber = phoneNumber.replaceAll("-", ""); //info: mengubah tanda "-" menjadi hilang atau dihapus
phoneNumber = phoneNumber.padStart(15, "0"); //info:menambahkan 0 di diawal string sampai jumlah karakter 15
phoneNumber = phoneNumber.padEnd(15, "0"); //info:menambahkan 0 di akhir string sampai jumlah karakter 15

console.log(phoneNumber);

//tittle: Math.random
//note: sebuah method yang digunakan untuk menghasilkan angka random
const min1 = 50;
const max1 = 100;

let randomNum = Math.floor(Math.random() * (max1 - min1)) + min1; //info:membuat nilai random dengan range 50-100 (math.floor digunakan untuk membulatkan bilangan kebawah, math.random untuk mengacak nilai sesuai dengan range)

console.log(randomNum);

const rollbtn = document.getElementById("rollbtn");
const mylabel1 = document.getElementById("mylabel1");
const mylabel2 = document.getElementById("mylabel2");
const mylabel3 = document.getElementById("mylabel3");
const minmath = 1;
const maxmath = 6;
let randomNum1;
let randomNum2;
let randomNum3;

rollbtn.onclick = function () {
  randomNum1 = Math.floor(Math.random() * maxmath) + minmath;
  randomNum2 = Math.floor(Math.random() * maxmath) + minmath;
  randomNum3 = Math.floor(Math.random() * maxmath) + minmath;
  mylabel1.textContent = randomNum1;
  mylabel2.textContent = randomNum2;
  mylabel3.textContent = randomNum3;
};

//tittle: if statement
//note: sebuah statement yang digunakan untuk mengecek kondisi
const myage = document.getElementById("myage"); //info: membuat variabel untuk memanggil id myage di html
const agebtn = document.getElementById("agebtn"); //info: membuat variabel untuk memanggil id agebtn di html
const info = document.getElementById("info"); //info: membuat variabel untuk memanggil id info di html
let age; //info: membuat variabel untuk menyimpan nilai umur yang diinputkan user

agebtn.onclick = function () {
  age = myage.value; // info: menyimpan nilai yang sudah di input user dari variabel myage
  age = Number(age); //info: dikonversikan ke tipe data number
  if (age >= 35) {
    info.textContent = `kamu terlalu tua`;
  } else if (age >= 18) {
    info.textContent = `kamu adalah seorang remaja`;
  } else if (age < 0) {
    info.textContent = `umur tidak boleh kurang dari 0`;
  } else if (age < 18) {
    info.textContent = `kamu masih terlalu kecil`;
  }
};

//tittle: checked property
//note: sebuah properti yang digunakan untuk mengecek apakah sebuah elemen di centang atau tidak
const myCheckBox = document.getElementById("myCheckBox");
const myVisa = document.getElementById("myVisa");
const myMasterCard = document.getElementById("myMasterCard");
const myPayPal = document.getElementById("myPaypal");
const mysubmit = document.getElementById("mySubmit");
const subResult = document.getElementById("subResult");
const paymentResult = document.getElementById("paymentResult");

mysubmit.onclick = function () {
  if (myCheckBox.checked == true) {
    //note: fungsi checked untuk memeriksa apakah program di centang atau tidak, jika iya maka nilainya true
    subResult.textContent = `you are subcribed!`;
    if (myVisa.checked) {
      paymentResult.textContent = `paying payment with Visa success, thankyou!`;
    } else if (myMasterCard.checked) {
      paymentResult.textContent = `paying payment with MasterCard success, thankyou!`;
    } else if (myPayPal.checked) {
      paymentResult.textContent = `paying payment with Paypal success, thankyou!`;
    } else {
      paymentResult.textContent = `Please select a payment method`;
    }
  } else {
    subResult.textContent = `you are NOT subcribed!`;
  }
};

//tittle: counter program
//note: sebuah program yang digunakan untuk menghitung angka
const tambah = document.getElementById("tambah"); //info: membuat variabel dengan memanggil id index dari html
const reset = document.getElementById("reset");
const kurang = document.getElementById("kurang");
const countLabel = document.getElementById("countLabel");
let count = 0;

tambah.onclick = function () {
  count++; //info: berfungsi untuk menambah angka setiap kali tombol ditambahkan
  countLabel.textContent = count; //info: untuk menampilkan hasilnya dengan mengubah text label dari html
};
reset.onclick = function () {
  count = 0;
  countLabel.textContent = count;
};
kurang.onclick = function () {
  count--; //info: berfungsi untuk mengurangi angka setiap kali tombol dikurangkan
  countLabel.textContent = count;
};
//note: pada line 1 - 5 membuat variabel untuk setiap index html agar mempremudah ketika dipanggil di javascript kemudian membuat function untuk setiap button yang ada di html agar ketika button di klik maka akan menambahkan atau mengurangi nilai count dan menampilkan nilai count di label countLabel.


// tittle: ternary operator = sebuah shortcut yang sama dengan if{} and else{} statements
//note:"?" untuk konsidi true, ":" untuk kondisi false; (hanya untuk dua konsidisi if dan else)

let time = 9;
let greeting = time < 12 ? "Good morning!" : "Good afternoon!";
console.log(greeting);

let isStudent = false;
let message = isStudent ? "You are a student" : "You are NOT a student";
console.log(message);

let purchaseAmount = 99;
let discount = purchaseAmount >= 100 ? 10 : 0;
console.log(
  `Your total is $${purchaseAmount - purchaseAmount * (discount / 100)}`
);

//tittle: switch statement
//note: sebuah statement yang digunakan untuk mengecek kondisi (mirip dengan if statement)
const day = 7;
switch (day) {
  case 1:                                       //info: digunakan jika kasus day nilainya 1 maka di proses, begitu seterusnya
    console.log("It is Monday");
    break;                                      //info: break digunakan untuk menghentikan kasus jika nilai kasus terpenuhi
  case 2:
    console.log("It is Tuesday");
    break;
  case 3:
    console.log("It is Wednesday");
    break;
  case 4:
    console.log("It is Thursday");
    break;
  case 5:
    console.log("It is Friday");
    break;
  case 6:
    console.log("It is Saturday");
    break;
  case 7:
    console.log("It is Sunday");
    break;
  default:                                      //info: default sama dengan else (dia akan berfungsi jika nilai kasus tidak terpenuhi atau tidak sesuai dengan perintah kasus)
    console.log(`${day} is not a day`);
}

//tittle: Slicing String
//note: sebuah metode untuk memotong string yang diambil dari variabel string sesuai dengan index yang diinginkan
//example 1
const FullStr = "Hello World";
let FirstStr = FullStr.slice(0, 5);                         //info:mengambil string dari index 0 sampai 5
console.log(FirstStr);

let LastStr = FullStr.slice(6, 11);                         //info:mengambil string dari index 6 sampai 11
console.log(LastStr);

let FirstChar = FullStr.slice(0, 1);                        //info:mengambil karakter pertama
console.log(FirstChar);

let LastChar = FullStr.slice(-1);                           //info:mengambil karakter terakhir
console.log(LastChar);

//example 2
const Fullname = "Candra Febriyanto";
let FirstName = Fullname.slice(0, Fullname.indexOf(" "));   //info:mengambil nama depan dengan batas akhir spasi
let LastName = Fullname.slice(Fullname.indexOf(" ") + 1);   //info:mengambil nama belakang dimulai dari index setelah spasi
console.log(FirstName);
console.log(LastName);

//implementation example
let email = "febriyantocandra05@gmail.com";
let username = email.slice(0, email.indexOf("@"));          //info: mengambil username dari email dengan batas akhir sebelum @
console.log(username);


//tittle: Method Chaining
//note: sebuah metode yang digunakan untuk memanggil beberapa metode sekaligus pada variabel yang sama dalam satu baris
let usernamemethod = window.prompt("Enter your name: ");

// no Method Chaining
username = usernamemethod.trims()
let letter = username.charAt(0);
letter = letter.toUpperCase();

let extrachar = usernamemethod.slice(1);
extrachar = extrachar.toLowerCase();
username = letter + extrachar;

console.log(username);

// Method Chaining
username = window.prompt("Enter your name: ");
username = username.trim().charAt(0).toUpperCase() + username.slice(1).toLowerCase();
console.log(username);


