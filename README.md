[![Build Status](https://travis-ci.com/robertamangiapane/Team-6-Game.svg?branch=master)](https://travis-ci.com/robertamangiapane/Team-6-Game)

<div align="center">  
  
![Screenshot](https://github.com/JoshDavies/Team-6-Game/blob/master/JTR.png?raw=true)  

</div>  

<p align="center">
  <a href="#Team6-Authors">Team6</a> •
  <a href="#card-wall">Card Wall</a> •
  <a href="#team-blog">Team Blog</a> •
  <a href="#quickstart">Quickstart</a> •
  <a href="#technologies-used">Technologies Used</a>
</p>

---

<img align="left" width="200" height="400" src="https://github.com/JoshDavies/Team-6-Game/blob/master/Screenshot%202020-01-17%20at%2013.22.15.png?raw=true">  
  
📝 A team based project to create an iOS Detective App in less than two weeks, all with no prior experience coding in Xcode & Swift. We hope you enjoy a challenge as much as us; you're going to need all your problem solving skills to become a Master Detective!  

Use geolocation to travel to the site of each crimescene and begin the next challenge in pursuit of the infamous Jack the Ripper.  
Use your detective skills to solve a different challenge at each site, unlocking the next location. Take care, wrong answers will cost points towards ranking up your Dective level.

## Team6 Authors

🔎 [Alec Walker](https://github.com/AlecDWalker)  
🔎 [Danielle Inkster](https://github.com/DanielleInkster)   
🔎 [Heli Sivunen](https://github.com/PacificRebel)   
🔎 [Jay Issuree](https://github.com/JayIssuree)  
🔎 [Josh Davies](https://github.com/JoshDavies)    
🔎 [Roberta Mangiapane](https://github.com/robertamangiapane)   
  
   
  
# Coding with Swift & XCode

<img align="left" width="200" height="400" src="https://github.com/JoshDavies/Team-6-Game/blob/master/demogif.gif?raw=true">  

One of my main contributions to the project was creating one of the five challenges (see demo gif) that was inspired by the game 'Guess Who'.  
I wanted to create a challenge that was fully testable and presented a challenge both front & back end. The player can type in questions to a witness to identify the suspect by their unique features (eg. does he have a beard?)  
I drew each of the nine men to have a unique combintation of features so that the player is able to catch the suspect by asking the right questions. 
Choosing the correct suspect earns points and unlocks the next step of the game. A wrong answer looses points. 
After getting the challenge functional, time was spent on refactoring the code (see below) and improving the user experience by simplifying the layout and disabling a wrong answer so that it cannot be chosen twice.
The code works by registering keywords in the players question and returning the correct responce.
The ViewController handles the effect of each button.  
Another of my contributions was to setup Travis, ensuring that it ran the correct script to test each merge request. Working as a team with multiple ongoing branches it was important to set this up early to avoid introducing errors into the Master. 

<img src="https://github.com/JoshDavies/Team-6-Game/blob/master/Screenshot%202020-01-17%20at%2013.20.45.png?raw=true">  

## TeamWork
For effective team work we held morning stand-ups to decide what each member would work on that day. As well as afternoon code reviews, and evening retros to descuss progression.  
[Click to Watch our Team Presentation (36:38)](https://www.facebook.com/MakersAcademy/videos/433426137603673/)

## Card Wall:
🗂 Our team ticketing system helped us to collaborate and organise teamwork.  
Using Trello to share out tasks, track progress and estimate sprints.  
https://trello.com/b/oH5M5yBU/jack-the-ripper-game

## Team Blog:
📖 Read about our journey day by day:   
https://medium.com/team-6

## Quickstart
⚡️Download 'Xcode' from Apples's AppStore (requires MacOS - It's a large file, so go make a coffee!)  

⚡️ Clone this repository to your local terminal, then:

```bash
# From /Team-6-Game repository:
> cd JackTheRipper
# Launch Xcode:
> xed .
```

⚡️ Run tests using key shortcut '⌘cmd' + 'u'  
⚡️ Click the '▻' Play button (Top left menu) to launch the app in an iOS simulator.  
⚡️ Enjoy the App!

## Technologies used:
⚙️ Swift v5.1  
⚙️ Xcode v11.2  
⚙️ XCTest framework  
⚙️ Travis CI  
