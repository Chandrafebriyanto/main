import tkinter as tk
import pygame as pg
import os
pg.mixer.init()

class Animal:
    def make_sound(self):
        return "some sound"

class Bird(Animal):
    def make_sound(self):
        pg.mixer.music.load('bird.mp3')
        pg.mixer.music.play()
        return "Tweet tweet"

class Dog(Animal):
    def make_sound(self):
        pg.mixer.music.load('dog.mp3')
        pg.mixer.music.play() 
        return "Woof woof"

def show_sound(animal):
    label_result.config(text=animal.make_sound())

root = tk.Tk()
root.geometry("500x300")
root.title("Polimorphism Example")

label_result = tk.Label(root, text="Klik salah satu tombol untuk mendengar suara hewan", font=("Arial", 14))
label_result.pack(pady=20)

button_bird = tk.Button(root, text="Burung", font=("Arial", 12), command=lambda: show_sound(Bird()))
button_bird.pack(pady=10)    

button_dog = tk.Button(root, text="Anjing", font=("Arial", 12), command=lambda: show_sound(Dog()))
button_dog.pack(pady=10)    

button_animal = tk.Button(root, text="Hewan Umum", font=("Arial", 12), command=lambda: show_sound(Animal()))
button_animal.pack(pady=10)

root.mainloop()