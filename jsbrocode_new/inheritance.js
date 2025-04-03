//inheritance adalah konsep di mana suatu objek atau class dapat mewarisi properti dan metode dari objek atau class lain.

class animal {
  alive = true;

  eat() {
    console.log(`this ${this.name} is eating`);
  }

  sleep() {
    console.log(`this ${this.name} is sleeping`);
  }
  run() {
    console.log(`this ${this.name} is running`);
  }
}

class cat extends animal {
  name = "kucing";
}

class rabbit extends animal {
  name = "kelinci";
}

class bull extends animal {
  name = "banteng";
}

const pus = new cat();
const Rabbit = new rabbit();
const Bull = new bull();

console.log(pus.alive);
pus.eat();
pus.sleep();
pus.run();
