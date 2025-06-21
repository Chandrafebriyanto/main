const express = require('express')
const app = express()
const port = 3000

// note: gunakan ejs
app.set('view engine', 'ejs')

app.get('/', (req, res) => {
  // res.sendFile(__dirname + '/index.html')
  const mahasiswa = [
    {
      nama: 'Candra',
      email: 'candra@gmail.com'
    },
    {
      nama: 'John',
      email: 'John@gmail.com'
    },
    {
      nama: 'Andre',
      email: 'andre@gmail.com'
    },
  ]
  res.render('index', { nama: 'John Doe', mahasiswa, title: 'Home Page' })
})

app.get('/about', (req, res) => {
  // res.sendFile(__dirname + '/tentang.html')
  res.render('tentang', { title: 'About Page' })
})

app.get('/contact', (req, res) => {
  // res.sendFile(__dirname + '/kontak.html')
  res.render('kontak', { title: 'Contact Page' })
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

