const express = require('express')
const app = express()
const port = 3000

app.get('/', (req, res) => {
  res.sendFile(__dirname + '/index.html')
})

app.get('/about', (req, res) => {
  res.sendFile(__dirname + '/tentang.html')
})

app.get('/contact', (req, res) => {
  res.sendFile(__dirname + '/kontak.html')
})

app.get('/products/:id', (req, res) => {
    res.send(`Produk dengan ID: ${req.params.id}`)
})

app.use((req, res, next) => {
  res.status(404).send('Halaman tidak ditemukan')
})

app.listen(port, () => {
  console.log(`Example app listening at http://localhost:${port}`)
})






// const http = require("http");

// http
//   .createServer((req, res) => {
//     res.write("Hello, World!");
//     res.end();
//   })
//   .listen(3000, () => {
//     console.log("Server is running on http://localhost:3000");
//   });
