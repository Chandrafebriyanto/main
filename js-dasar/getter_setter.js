// getter dan setter adalah cara untuk membuat function namun cara pemanggilannya seperti property

const person = {
    firstname: "Abdul",
    lastname: "Dudul",
    get fullName(){
        return `${this.firstname} ${this.lastname}`
    },
    set fullName(value){
        const [firstname, lastname] = value.split(" ")
        this.firstname = firstname
        this.lastname = lastname
    }
}

person.fullName = "Budi Nugraha"
console.table(person) 

person.fullName = "Ayu Tingting"
console.table(person) 

person.fullName = "Abdul Dudul"
console.table(person) 
