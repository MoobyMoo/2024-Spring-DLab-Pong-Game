# 2024-Spring-DLab-Pong-Game on Nexys 4 DDR FPGA

## [0.0.0](https://github.com/andreasonny83/twilio-remote-cli/compare/v0.0.1...v0.0.2) (2024-05-02)
> Description: Learning about VGA in FPGA

### Progress 
* Successfully drew two paddles on the sides and a ball in the middle.

### Performance Improvements
* Divided the column and row counters by 16 to keep track of one 16*16 block of pxiels at a time instead of one pixel at a time. 



## [0.0.1](https://github.com/andreasonny83/twilio-remote-cli/compare/v0.0.1...v0.0.2) (2024-05-03)
> Description: Ball and Paddle mechanics

### Progress 
* The ball moves diagonally and can diagonally bounce off walls.
* The paddles move, but they stretch.
* Movement of one side of the paddle influence the other. 



## [0.0.2](https://github.com/andreasonny83/twilio-remote-cli/compare/v0.0.1...v0.0.2) (2024-05-04)
> Description: Ball and Paddle mechanics

### Progress 
* The ball now only bounces of paddles and the top and bottom walls, it resets to the middle of the screen otherwise.

### Bug Fixes 
* The Paddles no longer stretch, but the left side still influences the right.



## [1.0.0](https://github.com/andreasonny83/twilio-remote-cli/compare/v0.0.1...v0.0.2) (2024-05-05)

> Description: Working Pong game with basic mechanics

### Bug Fixes
*  The paddles now move independently.

## [1.0.1](https://github.com/andreasonny83/twilio-remote-cli/compare/v0.0.1...v0.0.2) (2024-05-06)

> Description: Working Pong game with basic mechanics

### New Feature 
* Ball direction after reset now depends on who scores
* Added SSD display for the scoring system, First to 9 points wins!, After one player wins the score resets back to 0.


## [1.0.2](https://github.com/andreasonny83/twilio-remote-cli/compare/v0.0.1...v0.0.2) (2024-05-09)

> Description: Add the start and end screen for the game

### New Feature 
* Added start screen which has an easy animation
* Added end screen to show the final score.

### Bug Needed Addressing 
* 9 can't be shown (instead, the winner's score will be shown as 8)



## [1.0.3](https://github.com/andreasonny83/twilio-remote-cli/compare/v0.0.1...v0.0.2) (2024-05-10)

> Description: Minor gameplay changes and modes. 

### New Feature 
* Paddles now reset to the middle position everytime a new game starts. 
* Paddles moved toward the center of the board by one unit. 
* Added modes, score 5, 10, or 15 points to win.
* Updated ssd to include two digit scoreboard.

### Action Needed 
* Add a screen for selecting modes. 
