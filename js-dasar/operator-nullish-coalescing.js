let parameter= "john";

// note: isn't nullish operator
if (parameter === undefined || parameter === null){
    console.log("default value")
} else {
    console.log(parameter)
}

// note: with nullish operator
let data = parameter?? "default value"
console.log(data)