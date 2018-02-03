Create a file called people.rb. Run your program and commit your work after each step.

Let's start by creating two classes: one called Student and another called Instructor.
The student class has a method called learn that outputs "I get it!".
The instructor class has a method called teach that outputs "Everything in Ruby is an Object".
Both the instructor and the student have names. We know that instructors and students are both people. Create a parent Person class that contains the attribute name and an initializer to set the name.
Both the instructor and the student should also be able to do a greeting, like "Hi, my name is #{name}". Where's the best place to put this common method?
Create an instance of Instructor whose name is "Nadia" and call her greeting.
Create an instance of Student whose name is "Chris" and call his greeting.
Call the teach method on your instructor instance and call the learn method on your student. Next, call the teach method on your student instance. What happens? Why doesn't that work? Leave a comment in your program explaining why.
Once you're done, commit and push your work to GitHub!

Exercise 2 - Multilinguist
This assignment will give you some hands-on experience with the concept of inheritance in object-oriented programming.

Background concepts
defining classes and creating instances
defining and calling instance methods
instance variables
collections and iteration
Learning goals
defining classes that inherit from other classes
reading documentation for an already-defined parent class
Often you will be using inheritance to create child classes that inherit from classes that other developers made. In this exercise, instead of asking you to define a parent class and the child classes, we have provided you with a Multilinguist class and your task will be to refer to its documentation to help you define two child classes that inherit from it.

Getting started
Install the httparty gem by running the following command: gem install httparty
Fork this repository containing the Multilinguist class.
Open the Multilinguist documentation and take a look around.
Load multilinguist.rb in irb and try creating a Multilinguist instance and calling some of its methods to make sure you understand how it works.
Math genius
The multilinguist documentation tells us that this class represents a world-traveller who speaks many languages. The first child class that we're going to define represents a world-travelling math genius who can speak many languages and mentally add up huge lists of numbers.

Instances of this class should be able to accept a list of numbers and return a sentence stating the sum of the numbers. Make use of the inherited Multilinguist methods to ensure this sentence will always be delivered in the local language.

me = MathGenius.new
puts me.report_total([23,45,676,34,5778,4,23,5465]) # The total is 12048
me.travel_to("India")
puts me.report_total([6,3,6,68,455,4,467,57,4,534]) # है को कुल 1604
me.travel_to("Italy")
puts me.report_total([324,245,6,343647,686545]) # È Il totale 1030767
Quote collector
The second child class we're going to define represents a person who loves to memorize quotes and then travel the world, unleashing poor translations of them to unsuspecting passers-by.

Each instance of this class should have its own ever-growing collection of favourite quotes. It should have the ability to add a new quote to its collection as well as the ability to select a random quote to share in the local language.

Stretch goals
Improve the quote collector's conversational skills be allowing them to keep track of the topic of each quote (eg. "wisdom", "friendship") and add the ability to share a quote according to a specific topic, in addition to being able to share a random one.
Come up with a third child class that can make use of the multilinguist's abilities.
Give the math genius additional math-related skills besides adding long lists of numbers. Check out Ruby's Math module for inspiration.
Exercise 3: Our Solar System
Our solar system has a lot of stuff in it. Let's write a program that can help us figure out how much stuff it has by keeping a list of all the celestial bodies in our system and adding up their total mass.

First we'll need a class to represent the solar system. Let's call it System, and give it an attribute bodies. bodies will start as an empty array (ie. []).

Let's make bodies read-only, and give System an instance method called add which will add a celestial body to the list. We'll also need an instance method called total_mass which should add up the mass of all the bodies in bodies, and return it.

We'll also need a class to represent the various celestial bodies. We'll call it Body. Each of them will need a name and a mass. Let's make these read-only; we'll assign them when we create the body.

There are several types of bodies we're concerned about in our solar system: planets, stars (like our sun), and moons. We'll ignore asteroids and smaller planetoids (sorry Pluto).

Each of our body types needs a class: Planet, Star, and Moon. All of these bodies have some similarities: they all have a name and a mass. So, let's also make them inherit from Body. They do have some unique qualities though.

Planets:

Have a day, which is the number of hours it takes for the planet to rotate all the way around once.
Have a year, which is the number of days it takes for the planet to orbit the sun once. Whether you want to express this in Earth days or the planet's days is up to you.
Stars:

Have a type (ie. our Sun is a G-type star)
Moons:

Have a month, which is the number of days it takes for the moon to orbit its planet. Again, this can either be Earth days or the planet's days, your choice.
Have a planet that they orbit. We want to store the whole Planet object here.
Once we have our structure defined, let's start adding some things to our solar system. We can start with the Sun, the Earth, and the Earth's moon. Don't worry too much about getting the masses correct, any number really will do, although you can find their masses on Wikipedia if you want.

BONUS

Here's a couple extra things you can try out for extra cool points:

Don't allow the same celestial body to be added to the system more than once. There's only one Mars.
Add some class methods to Planet, Star, and Moon that will return all the planets, stars, and moons in the system, respectively (ie. Planet.all(system) should return all the planets in system)
There's more than just our system in the galaxy, so let's make a couple others. Maybe the Alpha Centauri system, our closest neighbour, only 4.24 lightyears away.
Now that we have a couple systems, what would it take to calculate our total galactic mass? (ie, the mass of all the bodies in all our systems) Find a way to write a class method on System that will return the total mass of all bodies in every system.
Once you're done, commit and push your work to GitHub!
