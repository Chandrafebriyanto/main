const person = {
    firstName: "Eko",
    middleName: "Kurniawan",
    lastName: "Khannedy",
    address : {
        country: "Indonesia",
        city: "Subang"
    },
    hobbies: [
        "Coding", "Game", "Traveling"
    ]
};

const json = JSON.stringify(person);
console.info(json);

const jsonObject = JSON.parse(json);
console.info(jsonObject);