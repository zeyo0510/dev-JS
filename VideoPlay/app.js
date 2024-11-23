// Get video element and source
const video = document.getElementById('myVideo');
const videoSource = document.getElementById('videoSource');

// Control buttons
const playPauseBtn  = document.getElementById('playPause');
const stopBtn       = document.getElementById('stop');
const muteUnmuteBtn = document.getElementById('muteUnmute');
const volUpBtn      = document.getElementById('volUp');
const volDownBtn    = document.getElementById('volDown');
const fullScreenBtn = document.getElementById('fullScreen');
const speedBtn      = document.getElementById('speed');
const fileInput     = document.getElementById('fileInput'); // New File Input

// Available speeds
const speeds = [0.5, 1, 1.5, 2];
let currentSpeedIndex = 1; // Start at normal speed (1x)

// Play/Pause video
playPauseBtn.addEventListener('click', function() {
  if (video.paused) {
    video.play();
    playPauseBtn.textContent = 'Pause';
  } else {
    video.pause();
    playPauseBtn.textContent = 'Play';
  }
});

// Stop video (reset to the start)
stopBtn.addEventListener('click', function() {
  video.pause();
  video.currentTime = 0;
  playPauseBtn.textContent = 'Play';
});

// Mute/Unmute video
muteUnmuteBtn.addEventListener('click', function() {
  video.muted = !video.muted;
  muteUnmuteBtn.textContent = video.muted ? 'Unmute' : 'Mute';
});

// Volume Up
volUpBtn.addEventListener('click', function() {
  if (video.volume < 1) video.volume += 0.1;
});

// Volume Down
volDownBtn.addEventListener('click', function() {
  if (video.volume > 0) video.volume -= 0.1;
});

// Fullscreen mode
fullScreenBtn.addEventListener('click', function() {
  if (video.requestFullscreen) {
    video.requestFullscreen();
  } else if (video.webkitRequestFullscreen) { // For Safari
    video.webkitRequestFullscreen();
  } else if (video.msRequestFullscreen) { // For IE/Edge
    video.msRequestFullscreen();
  }
});

// Change Speed
speedBtn.addEventListener('click', function() {
  currentSpeedIndex = (currentSpeedIndex + 1) % speeds.length; // Cycle through speeds
  video.playbackRate = speeds[currentSpeedIndex]; // Set the new speed
  speedBtn.textContent = `Speed: ${speeds[currentSpeedIndex]}x`; // Update button text
});

// Browse and load video file
fileInput.addEventListener('change', function() {
  const file = fileInput.files[0]; // Get the selected file
  if (file) {
    const fileURL = URL.createObjectURL(file); // Create a URL for the selected video
    videoSource.src = fileURL; // Set the video source to the file URL
    video.load(); // Reload the video with the new source
    playPauseBtn.textContent = 'Play'; // Reset Play button text
  }
});