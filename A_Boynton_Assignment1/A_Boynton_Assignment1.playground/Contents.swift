//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, sports store!"

let equipment = "tennis raquet " // String type

let price: Float =  100.99 // Float - Price

let raquets = 6  // Int type

let strings = false  // Bool type

let raquetLength : Int = 22
let oversized : Bool = true;

// AND Comparison & If, else if, else
if (raquetLength == 22) && (oversized)
{
    print("This one fits perfectly!")
}
else if (raquetLength == 18)
{
    print("This one is gonna be too short.")
}
else if (raquetLength == 24)
{
    print("This raquet is huge! No way!")
}
else
{
    print("They just do not have my size. Not buying today.")
}

// OR Comparison
if (strings == false) || (price == 150.99)
{
    print("This " + equipment + "costs too much for me.")
}
else if (strings == false)
{
    print("This is just not my color")
}
else if (price == 125.49)
{
    print("This one costs too much.")
}
else
{
    print("This one is just what I was looking for!")
}

// Switch example
switch raquets
{
case 0:
    print("There are no good ones here.")

case 2...5:  // Added a range operator
    print("Only a his and hers? Really?")
    
case 6:
    print("I will definitely be able to find one out of these choices!")

default:
    // do nothing
    break
    
}

// Single C Style Loop
var i: Int
for var i = 99; i >= 0; i--
{
    print("\(i) bottles of beer")
}

// For In Loop
for i in 2...10 {
    print("\(i) plus 10 is \(i+10)")
}

// While Loop
var balls = 10
while balls <= 50
{
    print("The number of tennis balls found is \(balls)")
    balls++
}

// Do While Loop
var players = 5
repeat {
    print("The amount of tennis pros at the tournament is \(players)")
    players++
}
while players < 20

//  Array with at least 5 items
let tennisBrands = ["Prince", "Slazenger", "Wilson", "Head", "Dunlop", "Babolat"]

// ***Printed items from the array*** using a loop
for brands in tennisBrands
{
    print(brands)
}

// Create a Dictionary of songs and their artists
var musicLibArray = ["A Brokedown Melody" : "Jack Johnson", "A Message 2010" : "Coldplay", "Albatross" : "Fleetwood Mac", "Call Me The Breeze" : "Lynyrd Skynyrd", "You Shook Me All Night Long" : "AC/DC"]

print(musicLibArray.count)

// Print Items from a Dictionary
for (song, artist) in musicLibArray
{
    print("\(song) is performed by \(artist).")
}

