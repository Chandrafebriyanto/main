document.addEventListener("DOMContentLoaded", function () {
  const ball = document.getElementById("ball");
  const gameArea = document.querySelector(".game-area");

  const startBtn = document.getElementById("start-btn");
  const resetBtn = document.getElementById("reset-btn");
  const pauseBtn = document.getElementById("pause-btn");
  const speedBtn = document.getElementById("speed-btn");

  const speedValue = document.getElementById("speed-value");
  const directionValue = document.getElementById("direction-value");
  const elasticityValue = document.getElementById("elasticity-value");
  const timeValue = document.getElementById("time-value");
  const collisionValue = document.getElementById("collision-value");

  let animationId;
  let gameRunning = false;
  let lastTime = null;
  let gameTime = 0;
  let collisions = 0;

  // Properti bola (fisika)
  const ballState = {
    x: 180,
    y: 180,
    vx: 200, // pixel per detik
    vy: -150, // pixel per detik
    radius: 20,
    elasticity: 0.8, // 80% energi dipertahankan
    gravity: 400, // percepatan gravitasi (px/s^2)
  };

  function updateBall(dt) {
    const gameWidth = gameArea.offsetWidth;
    const gameHeight = gameArea.offsetHeight;

    // Tambah gravitasi
    ballState.vy += ballState.gravity * dt;

    // Update posisi
    ballState.x += ballState.vx * dt;
    ballState.y += ballState.vy * dt;

    // Tabrak sisi kanan/kiri
    if (ballState.x + ballState.radius > gameWidth) {
      ballState.x = gameWidth - ballState.radius;
      ballState.vx = -ballState.vx * ballState.elasticity;
      collisions++;
    }
    if (ballState.x - ballState.radius < 0) {
      ballState.x = ballState.radius;
      ballState.vx = -ballState.vx * ballState.elasticity;
      collisions++;
    }
    if (ballState.y + ballState.radius > gameHeight) {
      ballState.y = gameHeight - ballState.radius;
      ballState.vy = -ballState.vy * ballState.elasticity;
      collisions++;
    }
    if (ballState.y - ballState.radius < 0) {
      ballState.y = ballState.radius;
      ballState.vy = -ballState.vy * ballState.elasticity;
      collisions++;
    }
    ball.style.left = ballState.x - ballState.radius + "px";
    ball.style.top = ballState.y - ballState.radius + "px";
    const speed = Math.sqrt(ballState.vx ** 2 + ballState.vy ** 2);
    const dir = (Math.atan2(ballState.vy, ballState.vx) * 180) / Math.PI;
    speedValue.textContent = speed.toFixed(1) + " px/detik";
    directionValue.textContent = Math.round(dir) + " derajat";
    collisionValue.textContent = collisions;
  }

  function loop(timestamp) {
    if (!lastTime) lastTime = timestamp;
    const dt = (timestamp - lastTime) / 1000; // detik
    lastTime = timestamp;

    if (gameRunning) {
      updateBall(dt);
      gameTime += dt;
      timeValue.textContent = gameTime.toFixed(1) + " detik";
      animationId = requestAnimationFrame(loop);
    }
  }

  startBtn.addEventListener("click", function () {
    if (!gameRunning) {
      gameRunning = true;
      lastTime = null;
      animationId = requestAnimationFrame(loop);
    }
  });

  resetBtn.addEventListener("click", function () {
    ballState.x = 180;
    ballState.y = 180;
    ballState.vx = 200;
    ballState.vy = -150;
    gameTime = 0;
    collisions = 0;
    lastTime = null;

    ball.style.left = ballState.x - ballState.radius + "px";
    ball.style.top = ballState.y - ballState.radius + "px";

    speedValue.textContent = "200 px/detik";
    directionValue.textContent = "45 derajat";
    timeValue.textContent = "0 detik";
    collisionValue.textContent = "0";
  });

  pauseBtn.addEventListener("click", function () {
    gameRunning = !gameRunning;
    if (gameRunning) {
      lastTime = null;
      animationId = requestAnimationFrame(loop);
      pauseBtn.textContent = "Jeda";
    } else {
      pauseBtn.textContent = "Lanjutkan";
    }
  });
  
  speedBtn.addEventListener("click", function () {
    ballState.vx *= 1.5;
    ballState.vy *= 1.5;
    const speed = Math.sqrt(ballState.vx ** 2 + ballState.vy ** 2);
    speedValue.textContent = speed.toFixed(1) + " px/detik";
  });

  document.addEventListener("keydown", function (e) {
    if (e.key.toLowerCase() === "r") resetBtn.click();
  });
  ball.style.left = ballState.x + "px";
  ball.style.top = ballState.y + "px";
});
