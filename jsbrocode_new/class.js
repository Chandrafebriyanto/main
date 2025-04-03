//class adalah template untuk membuat object

class product{
    constructor (name, price){
        this.name = name;
        this.price = price;
    }

    display(){
        console.log(`Product name: ${this.name}`);
        console.log(`Price: $${this.price}`);
    }

    calculate(salestax){
        return this.price + (this.price * salestax);
    }
}

const salestax = 0.05;

const product1 = new product('Laptop', 1500);
const product2 = new product('Smartphone', 800);
const product3 = new product('Tablet', 300);
product1.display();
console.log(`Total price: $${product1.calculate(salestax)}`);
product2.display();
console.log(`Total price: $${product2.calculate(salestax)}`);