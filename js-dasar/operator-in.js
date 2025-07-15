const person = {
    firstname: "abdul",
    lastname: "qohar" 
}

const result = "firstname" in person
if (result){
    console.log("ada")
} else {
    console.log("tidak ada")
}