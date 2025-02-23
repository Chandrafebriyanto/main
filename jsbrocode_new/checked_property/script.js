const myCheckBox = document.getElementById("myCheckBox")
const myVisa = document.getElementById("myVisa")
const myMasterCard = document.getElementById("myMasterCard")
const myPayPal = document.getElementById("myPaypal")
const mysubmit = document.getElementById("mySubmit")
const subResult = document.getElementById("subResult")
const paymentResult = document.getElementById("paymentResult")

mysubmit.onclick = function(){
    if(myCheckBox.checked == true){ /* fungsi checked untuk memeriksa apakah program di centang atau tidak, jika iya maka nilainya true */
        subResult.textContent = `you are subcribed!`
        if(myVisa.checked){
            paymentResult.textContent = `paying payment with Visa success, thankyou!`
        }
        else if(myMasterCard.checked){
            paymentResult.textContent = `paying payment with MasterCard success, thankyou!`
        }
        else if(myPayPal.checked){ 
            paymentResult.textContent = `paying payment with Paypal success, thankyou!`
        }
        else{
            paymentResult.textContent = `Please select a payment method`
        }
    }
    else{
        subResult.textContent = `you are NOT subcribed!`
    }

    
    }



