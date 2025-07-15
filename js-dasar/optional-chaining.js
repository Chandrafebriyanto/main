let person = {
    address : {
        country: "Indonesia"
    }
}

console.log(person.address.country) //indonesia
console.log(person?.student?.country) //undefined, student akan dianggap bernilai undefined
console.log(person.student.country) //error