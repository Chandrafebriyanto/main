const mongoose = require('mongoose');
mongoose.connect("mongodb://127.0.0.1:27017/task-web-app");

const task = mongoose.model("task", {
  tittle: {
    type: String,
    required: true,
  },
  dateline: {
    type: String,
    required: true,
  },
  description: {
    type: String,
    required: true,
  },
  link: {
    type: String,
    required: true,
  },

});

// Buat instance dari model
const task1 = new task({
  tittle: 'Membuat Web dengan NodeJs dan Bootstrap',
  dateline: new Date().toISOString(),
  description: 'membuat web sederhana dengan backend nodejs dan style bootstrap',
  link: 'http://www.google.com'
});

task1.save()
  .then((task) => console.log(task))
  .catch((err) => console.log(err));
