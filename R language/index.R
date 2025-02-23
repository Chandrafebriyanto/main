# TITTLE: packaged management
install.packages("tidyverse") 
library("tidyverse")
?tidyverse


# TITTLE: basic operations
5 + 5
a <- 10                       #INFO: create variable
a = 2                         #INFO: create variable = sama dengan <-
b <- c(1,2,3,4,5)             #INFO: create vector c()
b * 2


#TITTLE: operator logic
5 > 2 & 10 < 15               #INFO: logic AND &
5 < 2 | 7 < 10                #INFO: logic OR |
!TRUE                         #INFO: logic NOT !


#TITTLE: if, else, else if
x <- 2
if(x > 15) {                  #INFO: create if
    print(" x bigger 15")
} else if (x > 5) {           #INFO: create else if
   print(" x bigger 5")
} else {                      #INFO: else
   print("x smaller 5")
}


#TITTLE: for loop, while loop
for(a in 0:10){               #INFO: create for
    print(a)
}
c <- 0 
while(c < 11){                #INFO: create while
    print(c)
    c <- c + 1
}


#TITTLE:import data
#NOTE: The data import feature is in the environment panel (import)
view(anggota_perpus)        #INFO: view table


#tittle: concatenate element
#example_1
name <- "john"
paste("he is", name)        #info: must use tag "paste" for view output text join_by()

#example_2
first_name <- "John"
last_name <- "Wick"
paste(first_name, last_name)

#example 3
num1 <- 10
num2 <- 11
paste( num1 + num2)         #info: operator with concatenate element
#note: When using concatenate elements, you cannot combine numbers and text 


#tittle: multi variables
#note: nilai dari variabel 1, variabel 2, dan variabel 3 sama yaitu orange
var1 <- var2 <- var3 <- "Orange" 

var1                        #info: view output var1
var2                        #info: view output var2
var3                        #info: view output var3


#tittle: data types
#info: numeric
x <- 10.5
class(x)                    #info: "class" digunakan untuk cek tipe data

#info: integer
x <- 1000L
class(x) 

#info: complex
x <- 9i + 3
class(x)

#info: character/string
x <- "R is exciting"
class(x)

#info: logical/boolean
x <- TRUE
class(x)


#tittle: conversi tipe data number
#note: type conversi 1. as.numeric(), 2. as.integer(), 3. as.complex()
x <- 1L # integer
y <- 2 # numeric

# info: convert from integer to numeric:
a <- as.numeric(x)

# info: convert from numeric to integer:
b <- as.integer(y)

# print values of x and y
x
y

# print the class name of a and b
class(a)
class(b)
#note: tipe data number complex harus memiliki imaginer 'i' setelah nilai integer example : 3i or 5 + 2i


#tittle: R math
#note: cara implementasi matematika dalam bahasa R
10 + 5
12 - 7
30 / 2
2 * 2
2 ** 3

max(10, 20, 30)             #info: nilai maksimal pada list
min(10, 20, 30)             #info: nilai minimal pada list

sqrt(81)                    #info: bilangan akar

abs(-4.7)                   #info: output yang keluar akan positif

ceiling(1.4)                #info: pembulatan ke atas
floor(1.4)                  #info: pembulatan ke bawah


#tittle: string
str <- "Hello World!"
nchar(str)                  #info: menghitung banyak character

grepl("H", str)             
grepl("Hello", str)
grepl("X", str)
#note: 'grepl' digunakan untuk mengecek string apakah ada character yang di cari pada string


#tittle: function
my_function <- function() { #info: create a function with the name my_function
  print("Hello World!")
}
my_function()               #info: call the function named my_function

#tittle: function dengan nama variabel
my_function <- function(name) { 
  paste(name, "Griffin")
}
my_function("Peter")
my_function("Lois")
my_function("Stewie")

#tittle: function default value
my_function <- function(country = "Norway") { 
  paste("I am from", country)
}
my_function("Sweden")
my_function("India")
my_function()               #info: jika tidak mengisi variabel country maka nilai yang muncul adalah nilai default
my_function("USA")

#tittle: function return value
Nested_function <- function(x, y) {
  a <- x + y
  return(a)
}
Nested_function(Nested_function(2,2), Nested_function(3,3)) #info: penyebutan 2 nilai function output = 10

Outer_func <- function(x) {
  Inner_func <- function(y) {
    a <- x + y
    return(a)
  }
  return (Inner_func)
}
output <- Outer_func(3)     #info: akan kesimpan sebagai nilai x
output(5)                   #info: otomatis masuk kedalam function sebagai nilai y


#tittle: R Vektor
#note: vektor adalah kumpulan data yang memiliki tipe data yang sama
fruits <- c("banana", "apple", "orange")  #info: vektor fruits (string)
numbers <- c(1, 2, 3)
numbers <- 1:10                             #info: vektor 1 sampai 10
numbers <- seq(1, 10, by = 2)               #info: vektor 1 sampai 10 dengan kelipatan 2
numbers <- rep(1, 10)                       #info: vektor 1 sebanyak 10 kali

#note: cara mengakses vektor
fruits <- c("banana", "apple", "orange", "mango", "lemon")
fruits[1]                                   #info: output banana
fruits[1:3]                                 #info: output banana, apple, orange
fruits[c(1, 3, 5)]                          #info: output banana, orange, lemon
fruits[-1]                                  #info: output apple, orange, mango, lemon

#note: cara mengganti nilai vektor
fruits <- c("banana", "apple", "orange", "mango", "lemon")
fruits[2] <- "grape"
fruits

#note: cara menambahkan nilai vektor
fruits <- c("banana", "apple", "orange", "mango", "lemon")
fruits <- c(fruits, "grape")
fruits


#tittle: R List
#note: list adalah kumpulan data yang memiliki tipe data yang berbeda
my_list <- list("andi", "john", "adel", "budi", 1, 2, 3, 4)
my_list

#note: cek item list
thislist <- list("apple", "banana", "cherry")
"apple" %in% thislist                        #info: program mengecek apakah item apple ada di dalam list

#note: menambahkan item list
thislist <- list("apple", "banana", "cherry")
append(thislist, "orange")                 #info: menambahkan item orange ke dalam list
append(thislist, "orange", after = 2)      #info: menambahkan item orange ke dalam list setelah item ke 2


#tittle: R Matrik
#note: matrik adalah kumpulan data yang memiliki tipe data yang sama
thismatrix <- matrix(c("apple", "banana", "cherry", "orange"), nrow = 2, ncol = 2)
thismatrix
my_matrix <- matrix(c(1, 2, 3, 4, 5, 6), nrow = 2, ncol = 3)  #info: row = vertical, col = horizontal
my_matrix
my_matrix[1, 2]                             #info: output 2
my_matrix[,2]                               #info: output yang keluar di ambil dari kolom ke 2
my_matrix[1,]                               #info: output yang keluar di ambil dari baris ke 1