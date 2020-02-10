# Pyramid - Rails API

<!--- These are examples. See https://shields.io for others or to customize this set of shields. You might want to include dependencies, project status and licence info here --->
![GitHub repo size](https://img.shields.io/github/repo-size/ohnickmoy/Pyramid_Backend)

Pyramid was my final project during my time at Flatiron School. This is the repo for backend side of this project. It takes inspiritation from the [GZCL Linear Progression](http://swoleateveryheight.blogspot.com/2014/07/the-gzcl-method-simplified_13.html) weightlifting program. Come check it out!

## Video Walkthrough

Watch this [video](https://www.youtube.com/watch?v=-inkiHxGZGI&t=7s) to see a walkthrough of the project

##  Motivations

Weightlifting has been one of my growing hobbies for a while now and this training program helped me get stronger pretty quickly when I was starting out. 

When I was mulling over project ideas, my gut instinct was work on a project that solved a problem that I was dealing with. Working with spreadsheets in the gym felt clunkie, so I took inspiritation from other gym apps to make a project that suited my needs 

## Challenges

One challenge, among many, was implementing the algorithm that followed the linear progression protocol based on a failed or successful execution of sets (like finishing 5 sets of Squats for 3 reps a piece) and determining the weight for the next time a user would do a certain routine. 

Another challenge was trying to determine how my models and my relationships between them would be structued given how the workout program works. Say for example, a workout you're doing is a T1 version of a Squat (5 sets by 3 reps). However, another workout has a T2 version of a Squat (3 sets by 10 reps). How would you differentiate a T1 exercise versus a T2 if you want to separate the models? Eventually, the screenshot below is what I came up with: 

![Image of Pyramid Models](https://i.ibb.co/dMychwB/Pyramid-Database-ER-Diagram-Crow-s-Foot.jpg)

## Prerequisites

Before you begin, ensure you have met the following requirements:
* Have ruby installed
* Be sure to run `bundle install` if you decide to fork the repo to install all gems and dependencies

## Under the Hood Stuff

This project was built using Ruby on Rails as an API. It also uses the [Fast_JSON API](https://github.com/Netflix/fast_jsonapi) gem to serialize the data quickly. 

## Contact

If you want to contact me you can reach me at <nicksmoy@gmail.com>.
