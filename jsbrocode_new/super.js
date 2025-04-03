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
// super = keyword is used in classes to call the constructor or
//              access the properties and methods of a parent (superclass)
//              this = this object
//              super = the parent

class Animal{

    constructor(name, age){
        this.name = name;
        this.age = age;
    }

    move(speed){
        console.log(`The ${this.name} moves at a speed of ${speed}mph`);
    }
}

class Rabbit extends Animal{

    constructor(name, age, runSpeed){
        super(name, age);
        this.runSpeed = runSpeed;
    }

    run(){
        console.log(`This ${this.name} can run`);
        super.move(this.runSpeed);
    }
}

class Fish extends Animal{
    
    constructor(name, age, swimSpeed){
        super(name, age);
        this.swimSpeed = swimSpeed;
    }

    swim(){
        console.log(`This ${this.name} can swim`);
        super.move(this.swimSpeed);
    }
}

class Hawk extends Animal{
    
    constructor(name, age, flySpeed){
        super(name, age);
        this.flySpeed = flySpeed;
    }

    fly(){
        console.log(`This ${this.name} can fly`);
        super.move(this.flySpeed);
    }
}

const rabbit = new Rabbit("rabbit", 1, 25);
const fish = new Fish("fish", 2, 12);
const hawk = new Hawk("hawk", 3, 50);

rabbit.run();
fish.swim();
hawk.fly();

