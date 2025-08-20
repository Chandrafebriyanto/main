const target = {
    middleName: "Eko"
}

const handler = {
    get : function (target, property){
        return target[property];
    },

    set: function (target, property, value){
        target[property] = value;
    }
}

const proxy = new Proxy(target , handler);
proxy.firstName = "Budi"
proxy.lastName = "Kurniawan"

console.info(proxy.firstName);
console.info(proxy.middleName);
console.info(proxy.lastName);
console.info(target);