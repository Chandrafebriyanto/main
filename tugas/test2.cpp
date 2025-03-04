#include <iostream>

using namespace std;

int main() {
    double num1, num2;
    char operasi;
    
    cout << "masukan angka pertama: ";
    cin >> num1;
    
    cout << "masukan angka kedua: ";
    cin >> num2;
    
    cout << "pilih operasi bilangan (+,-,*,/): ";
    cin >> operasi;
    
    if (operasi == '+') {
        cout << "hasil penjumlahan kedua angka tersebut: " << num1 + num2 << endl;
    }
    else if (operasi == '-') {
        cout << "hasil pengurangan kedua angka tersebut: " << num1 - num2 << endl;
    }
    else if (operasi == '*') {
        cout << "hasil perkalian kedua angka tersebut: " << num1 * num2 << endl;
    }
    else if (operasi == '/') {
        if (num2 == 0) {
            cout << "Tidak dapat membagi dengan nol!" << endl;
        } 
        else {
            cout << "hasil pembagian kedua angka tersebut: " << num1 / num2 << endl;
        }
    }
    else {
        cout << "Operasi tidak valid!" << endl;
    }
    
    return 0;
}