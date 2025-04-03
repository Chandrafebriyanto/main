class animal{

    constructor(name, age){
        this.name = name,
        this.age = `${age} years`
    }

    move(speed){
        console.log(`The ${this.name} moves at a speed of ${speed}`)
    }
}

class rabbit extends animal{

    constructor(name, age, runSpeed){
        super(name, age);
        this.runSpeed = `${runSpeed} miles`
    }

    run(){
        super.move(this.runSpeed)
    }
}

class fish extends animal{

    constructor(name, age, swimSpeed){
        super(name, age);
        this.swimSpeed = `${swimSpeed} miles`
    }

    swim(){
        super.move(this.swimSpeed)
    }
}

class hawk extends animal{

    constructor(name, age, flySpeed){
        super(name, age);
        this.flySpeed = `${flySpeed} miles`
    }

    fly(){
        super.move(this.flySpeed)
    }
}

const Rabbit = new rabbit("Bunny", 2, 20);
const Fish = new fish("Nemo", 1, 10);
const Hawk = new hawk("Mihawk", 3, 30);

console.log(Rabbit.name)
console.log(Rabbit.age)
console.log(Rabbit.runSpeed)

console.log(Fish.name)
console.log(Fish.age)
console.log(Fish.swimSpeed)

console.log(Hawk.name)
console.log(Hawk.age)
console.log(Hawk.flySpeed)

Hawk.fly()


//example


