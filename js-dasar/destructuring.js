// destructuring adalah pengambilann data dari array/objecct tanpa harus melakukan pengambilan data satu persatu
{
    // ARRAY
    const names = ["Muh", "Abdul", "Dudul", "Qohar", "Suryana"];
    const [firstName, middleName, lastName, ...other] = names;
    console.log(firstName);
    console.log(middleName);
    console.log(lastName);
    console.log(other);
}

{
    // OBJECT
    const person = {
        firstName: "Muh",
        middleName: "Abdul",
        lastName: "Dudul",
        address: {
            street: "jalan belum ada",
            city: "bandung",
            country: "indonesia"
        },
        hobby: "video game",
        channel: "Jess No Limit"
    }    

    const {firstName, middleName, lastName, address, address: {street, city, country}, ...others} = person
    console.log(firstName);
    console.log(middleName);
    console.log(lastName);
    console.log(address);
    console.log(street);
    console.log(city);
    console.log(country);
    console.log(others);
}

{
    // FUNCTION PARAMETER
    function displayPerson ({firstName, middleName, lastName}){
        console.log(firstName);
        console.log(middleName);
        console.log(lastName);
    }

    const person = {
        firstName: "Muh",
        middleName: "Abdul",
        lastName: "Dudul",
    }
    displayPerson(person)


    function sum([first, second]){
        return first + second
    }

    console.log(sum([1, 2]));
    console.log(sum([10,10]))
}

{
    // DEFAULT VALUE
    const names = ["Abdul"]
    const [middleName, firstName = "muh", lastName="Dudul"] = names
    console.log(firstName);
    console.log(middleName);
    console.log(lastName);
}