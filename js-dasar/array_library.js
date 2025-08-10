{
//     array loop
    const array = ["Dono", "Kasino", "Indro"]
    array.forEach((value, index) => console.log(`${index}. ${value}`))
    array.forEach(function (item, index) {
        console.log(`${index}. ${item}`)
    })
}

{
//     array queue
    const lst = []

    lst.push("Dono")
    lst.push("Kasino")
    lst.push("Indro")

    console.log(lst.shift())
    console.log(lst.shift())
    console.log(lst.shift())
}

{
//     array Stack
    const stack = []

    stack.push("A")
    stack.push("K")
    stack.push("Q")
    stack.push("J")
    stack.push("Joker")

    console.log(stack.pop())
    console.log(stack.pop())
    console.log(stack.pop())
    console.log(stack.pop())
    console.log(stack)
}

{
//     Array Search
    const source = [1,2,3,4,5,1,2,3,4]

    console.log(source.find(value => value > 3))
    console.log(source.findIndex(value => value > 3))
    console.log(source.includes(6))
    console.log(source.indexOf(5))
    console.log(source.lastIndexOf(5))
}

{
//     Array Filter
    const numbers = [1,2,3,4,5,6,7,8,9,10]
    console.log(numbers.filter(value => value % 2 === 0))
    console.log(numbers.filter(value => value % 2 === 1))
}

{
//     array transform
    const names = "budino sugesti yotno".split(" ")
    console.log(names.map(value => value.toUpperCase()))

    const numbers = [1,2,3,4,5,6,7,8,9,10]
    console.log(numbers.reduce((result, value) => result + value))
    console.log(numbers.reduceRight((result, value) => result + value))
}
