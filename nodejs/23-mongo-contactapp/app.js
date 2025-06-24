// tittle: require module
const express = require("express");
const expressLayouts = require("express-ejs-layouts");
require("./utils/db");
const Contact = require("./model/contact");
const session = require("express-session");
const cookieParser = require("cookie-parser");
const flash = require("connect-flash");

const app = express();
const port = 3000;

app.listen(port, () => {
  console.log(`Server is running on http://localhost:${port}`);
});

// note:konfigurasi flash
app.use(cookieParser("secret"));
app.use(
  session({
    cookie: { maxAge: 6000 },
    secret: "secret",
    resave: true,
    saveUninitialized: true,
  })
);
app.use(flash());

// tittle: setting view engine
app.set("view engine", "ejs");
app.use(expressLayouts); // gunakan express-ejs-layouts
app.use(express.static("public")); // gunakan folder public untuk static files
app.use(express.urlencoded({})); // untuk parsing data dari form

// tittle: default raoute
app.get("/", (req, res) => {
  const mahasiswa = [
    {
      nama: "Candra",
      email: "candra@gmail.com",
    },
    {
      nama: "John",
      email: "John@gmail.com",
    },
    {
      nama: "Andre",
      email: "andre@gmail.com",
    },
  ];

  res.render("index", {
    //note: membuat file index.ejs
    layout: "layouts/main-layout",
    nama: "John Doe",
    mahasiswa,
    title: "Home Page",
  });
});

// tittle: halaman about
app.get("/about", (req, res) => {
  res.render("tentang", {
    //note: membuat file tentang.ejs
    title: "About Page",
    layout: "layouts/main-layout",
  });
});

// tittle: halaman kontak
app.get("/contacts", async (req, res) => {
  const contacts = await Contact.find(); // mengambil data dari database

  res.render("kontak", {
    //note: membuat file kontak.ejs
    title: "Contact Page",
    layout: "layouts/main-layout",
    contacts,
    msg: req.flash("msg"), // note: menampilkan pesan flash
  });
});

// tittle: halaman detail kontak
app.get("/contacts/:name", async (req, res) => {
  const contact = await Contact.findOne({
    name: req.params.name,
  });

  res.render("detail", {
    //note: membuat file detail.ejs
    title: "detail Contact Page",
    layout: "layouts/main-layout",
    contact,
  });
});
