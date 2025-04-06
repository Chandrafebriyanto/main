//ES6 Module adalah fitur baru di JavaScript yang memungkinkan kita untuk menulis kode JavaScript dalam bentuk modul. Modul adalah bagian dari kode yang dapat diekspor dan diimpor ke dalam file lain. Dengan menggunakan ES6 Module, kita dapat mengorganisir kode kita dengan lebih baik, memisahkan tanggung jawab, dan menghindari konflik nama variabel.4

export const PI = 3.14; // variabel yang akan diekspor

export function getVolume(radius) {
  // fungsi yang akan diekspor
  return (4 / 3) * PI * radius ** 3;
}
export function getArea(radius) {
  // fungsi yang akan diekspor
  return 4 * PI * radius ** 2;
}
export function getCircumference(radius) {
  // fungsi yang akan diekspor
  return 2 * PI * radius;
}
