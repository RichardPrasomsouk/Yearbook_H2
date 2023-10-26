function switchVideo(videoSrc) {
    const mainVideo = document.getElementById("mainVideo");
    mainVideo.src = videoSrc;
    mainVideo.load();
    mainVideo.play();

    // Pause all other mini videos
    const miniVideos = document.querySelectorAll(".miniVideo");
    miniVideos.forEach((video) => {
      if (
        video.innerText !==
        `Mini Video ${videoSrc.charAt(videoSrc.length - 5)}`
      ) {
        video.style.backgroundColor = "";
      } else {
        video.style.backgroundColor = "lightgray";
      }
    });
  }