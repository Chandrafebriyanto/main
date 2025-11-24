import pygame
import sys
import random
import time
import os


class GameObject:
    def __init__(self, color, position):
        self.color = color
        self.position = position

    def draw(self, game_window):
        pygame.draw.rect(game_window, self.color, pygame.Rect(
            self.position[0], self.position[1], 10, 10))


class Snake(GameObject):
    def __init__(self, position):
        super().__init__(pygame.Color(0, 255, 0), position)

        self.body = [list(position), [position[0] - 10,
                                      position[1]], [position[0] - 20, position[1]]]

        self.direction = 'RIGHT'
        self.change_to = self.direction

    def change_direction(self, direction):
        if direction == 'UP' and self.direction != 'DOWN':
            self.change_to = 'UP'
        if direction == 'DOWN' and self.direction != 'UP':
            self.change_to = 'DOWN'
        if direction == 'LEFT' and self.direction != 'RIGHT':
            self.change_to = 'LEFT'
        if direction == 'RIGHT' and self.direction != 'LEFT':
            self.change_to = 'RIGHT'

    def move(self):
        self.direction = self.change_to

        if self.direction == 'UP':
            self.position[1] -= 10
        if self.direction == 'DOWN':
            self.position[1] += 10
        if self.direction == 'LEFT':
            self.position[0] -= 10
        if self.direction == 'RIGHT':
            self.position[0] += 10

        self.body.insert(0, list(self.position))

    def shrink(self):
        self.body.pop()

    def draw(self, game_window):
        for pos in self.body:
            pygame.draw.rect(game_window, self.color,
                             pygame.Rect(pos[0], pos[1], 10, 10))

    def check_collision(self, frame_size_x, frame_size_y):
        if self.position[0] < 0 or self.position[0] > frame_size_x - 10:
            return True
        if self.position[1] < 0 or self.position[1] > frame_size_y - 10:
            return True

        if self.position in self.body[1:]:
            return True

        return False


class Apple(GameObject):
    def __init__(self, frame_size_x, frame_size_y):
        x = random.randrange(1, (frame_size_x // 10)) * 10
        y = random.randrange(1, (frame_size_y // 10)) * 10
        super().__init__(pygame.Color(255, 0, 0), [x, y])

    def respawn(self, frame_size_x, frame_size_y):
        self.position = [
            random.randrange(1, (frame_size_x // 10)) * 10,
            random.randrange(1, (frame_size_y // 10)) * 10
        ]


class GoldApple(Apple):
    def __init__(self, frame_size_x, frame_size_y):
        super().__init__(frame_size_x, frame_size_y)
        self.color = pygame.Color(255, 215, 0)


class Game:
    def __init__(self):
        pygame.init()
        pygame.mixer.init()
        self.eat_sound = None
        try:
            script_dir = os.path.dirname(__file__)
            sound_path = os.path.join(script_dir, 'eat.mp3')
            self.eat_sound = pygame.mixer.Sound(sound_path)
        except:
            print(
                "Peringatan: File suara 'eat.mp3' tidak ditemukan. Game berjalan tanpa suara.")

        self.frame_size_x = 720
        self.frame_size_y = 480
        self.game_window = pygame.display.set_mode(
            (self.frame_size_x, self.frame_size_y))
        pygame.display.set_caption('Snake Game - 100 Days Challenge')
        self.fps_controller = pygame.time.Clock()

        self.snake = Snake([100, 50])
        self.apple = Apple(self.frame_size_x, self.frame_size_y)
        self.gold_apple = GoldApple(self.frame_size_x, self.frame_size_y)

        self.score = 0

    def game_over(self):
        my_font = pygame.font.SysFont('Arial', 90)
        game_over_surface = my_font.render(
            'You Lost!', True, pygame.Color(255, 0, 0))
        game_over_rect = game_over_surface.get_rect()
        game_over_rect.midtop = (self.frame_size_x / 2, self.frame_size_y / 4)

        self.game_window.fill(pygame.Color(0, 0, 0))
        self.game_window.blit(game_over_surface, game_over_rect)
        self.show_score(choice=1)
        pygame.display.flip()

        time.sleep(3)
        pygame.quit()
        sys.exit()

    def show_score(self, choice=1):
        score_font = pygame.font.SysFont('Arial', 20)
        score_surface = score_font.render(f'Score : {self.score}', True, pygame.Color(
            0, 0, 0) if choice != 1 else pygame.Color(255, 255, 255))
        score_rect = score_surface.get_rect()
        if choice == 1:
            score_rect.midtop = (self.frame_size_x/2, self.frame_size_y/1.25)
        else:
            score_rect.midtop = (72, 15)
        self.game_window.blit(score_surface, score_rect)

    def play_eat_sound(self):
        if self.eat_sound:
            self.eat_sound.play()

    def run(self):
        while True:
            for event in pygame.event.get():
                if event.type == pygame.QUIT:
                    pygame.quit()
                    sys.exit()
                elif event.type == pygame.KEYDOWN:
                    if event.key == pygame.K_UP:
                        self.snake.change_direction('UP')
                    if event.key == pygame.K_DOWN:
                        self.snake.change_direction('DOWN')
                    if event.key == pygame.K_LEFT:
                        self.snake.change_direction('LEFT')
                    if event.key == pygame.K_RIGHT:
                        self.snake.change_direction('RIGHT')
                    if event.key == pygame.K_ESCAPE:
                        pygame.event.post(pygame.event.Event(pygame.QUIT))

            self.snake.move()

            if self.snake.check_collision(self.frame_size_x, self.frame_size_y):
                self.game_over()

            food_eaten = False

            if self.snake.position == self.apple.position:
                self.score += 1
                self.apple.respawn(self.frame_size_x, self.frame_size_y)
                food_eaten = True
                self.play_eat_sound()

            elif self.snake.position == self.gold_apple.position:
                self.score += 1
                self.gold_apple.respawn(self.frame_size_x, self.frame_size_y)
                food_eaten = True
                self.play_eat_sound()

            if not food_eaten:
                self.snake.shrink()

            self.game_window.fill(pygame.Color(255, 255, 255))
            self.snake.draw(self.game_window)
            self.apple.draw(self.game_window)
            self.gold_apple.draw(self.game_window)
            self.show_score(choice=0)
            pygame.display.update()
            self.fps_controller.tick(15)


if __name__ == '__main__':
    game = Game()
    game.run()
