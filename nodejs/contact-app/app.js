const { isUtf8 } = require("buffer");
const fs = require("fs");
const readline = require("readline");
const rl = readline.createInterface({
  input: process.stdin,
  output: process.stdout,
});

// tittle: membuat directory jika belum ada directory
const dirpath = './data'
if (!fs.existsSync(dirpath)) {
    fs.mkdirSync(dirpath)
};

// tittle: membuat file jika belum ada file
const datapath = './data/contact.json'
if (fs.existsSync(datapath)) {
    fs.writeFileSync(datapath, '[]', 'utf-8')
};

rl.question('masukan nama kamu: ', (nama) => {
    rl.question('masukan nomer telepon kamu: ', (nomer) => {
        const contact = {nama, nomer}
        const filleBuffer = fs.readFileSync('data/contact.json', 'Utf-8')
        const contacts = JSON.parse(filleBuffer)

        contacts.push(contact)
        fs.writeFileSync('data/contact.json', JSON.stringify(contacts))
        console.log("terima kasih udah menambahkan data")
        rl.close();
    })
});