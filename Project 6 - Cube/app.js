let x = 0,
  flag = false;

const rotate = () => {
  const cubes = document.querySelectorAll(".cube");
  // console.log(cubes);
  Array.from(cubes).forEach(
    cube => (cube.style.transform = `rotateY(${x}deg)`)
  );
};
const ChangePlayPause = () => {
  const i = document.querySelector(".play-pause i");
  const cls = i.classList[1];
  if (cls === "fa-play") {
    i.classList.remove("fa-play");
    i.classList.add("fa-pause");
  } else {
    i.classList.add("fa-play");
    i.classList.remove("fa-pause");
  }
};
const playPause = () => {
  if (!flag) {
    interval = setInterval(() => {
      x -= 90;
      rotate();
    }, 3000);
    ChangePlayPause();
    flag = true;
  } else {
    clearInterval(interval);
    ChangePlayPause();
    flag = false;
  }
};
document.querySelector(".left-arrow").addEventListener("click", () => {
  x += 90;
  rotate();
  if (flag) {
    playPause();
  }
});
document.querySelector(".left-arrow").addEventListener("mouseover", () => {
  x += 25;
  rotate();
});
document.querySelector(".left-arrow").addEventListener("mouseout", () => {
  x -= 25;
  rotate();
});
document.querySelector(".right-arrow").addEventListener("click", () => {
  x -= 90;
  rotate();
  if (flag) {
    playPause();
  }
});
document.querySelector(".right-arrow").addEventListener("mouseover", () => {
  x -= 25;
  rotate();
});
document.querySelector(".right-arrow").addEventListener("mouseout", () => {
  x += 25;
  rotate();
});
document.querySelector(".play-pause").addEventListener("click", () => {
  playPause();
});
