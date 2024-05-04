# 2024-Spring-DLab-Pong-Game on Nexys 4 DDR FPGA

## [0.0.0](https://github.com/andreasonny83/twilio-remote-cli/compare/v0.0.1...v0.0.2) (2024-05-02)
> Description: Learning about VGA in FPGA

### New Features
* Successfully drew two paddles on the sides and a ball in the middle.

### Performance Improvements
* Divided the column and row counters by 16 to keep track of one 16*16 block of pxiels at a time instead of one pixel at a time. 



## [0.0.1](https://github.com/andreasonny83/twilio-remote-cli/compare/v0.0.1...v0.0.2) (2024-05-03)
> Description: Ball and Paddle mechanics

### New Features
* The ball moves diagonally and can diagonally bounce off walls.
* The paddles move, but they stretch.
* Movement of one side of the paddle influence the other. 



## [0.0.2](https://github.com/andreasonny83/twilio-remote-cli/compare/v0.0.1...v0.0.2) (2024-05-04)
> Description: Ball and Paddle mechanics

### New Features
* The ball now only bounces of paddles and the top and bottom walls, it resets to the middle of the screen otherwise.

### Bug Fixes 
* The Paddles no longer stretch, but the left side still influences the right.



## [1.0.0](https://github.com/andreasonny83/twilio-remote-cli/compare/v0.0.1...v0.0.2) (2024-05-05)

> Description: Working Pong game with basic mechanics

### Bug Fixes
*  The paddles now move independently.
