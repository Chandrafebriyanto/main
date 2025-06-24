const mongoose = require('mongoose');


const contact =mongoose.model('contact',{
    name: {
        type:String,
        required: true,
    },
    email: String,
    nomer: {
        type: String,
        required: true,
    }
})

module.exports = contact;