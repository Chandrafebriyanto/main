import pygame
import sys

pygame.init()
pygame.mixer.init()

pygame.mixer.music.load('Blue Moon.mp3')
pygame.mixer.music.play(-1)

image = pygame.image.load('logo-unesa.png')
width, height = 600, 400
screen = pygame.display.set_mode((width, height))
pygame.display.set_caption('Menampilkan Gambar dan Memutar Musik')

image = pygame.transform.scale(image, (300, 300))

x = (width //2) - (image.get_width() // 2)
y = (height //2) - (image.get_height() // 2)

while True:
    for event in pygame.event.get():
        if event.type == pygame.QUIT:
            pygame.quit()
            sys.exit()
    
    screen.fill((255, 255, 255))
    screen.blit(image, (x, y))
    pygame.display.update()