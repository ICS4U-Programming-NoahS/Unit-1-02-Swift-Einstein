//
// Einstein.swift
//
// Created by Noah Smith
// Created on 2025-02-16
// Version 1.0
// Copyright (c) 2025 Noah Smith. All rights reserved.
//
// The Einstein program asks the user to enter the mass of an object.
// It then sees how much energy could be released from that object.
// It also includes a loop, try .. catch, and is rounded to 3 decimal places.

// Import foundation library
import Foundation

// Declare constants
let speedOfLight = (2.998 * pow(10, 8))

// Define the different possible error types
enum InputError: Error {
    case invalidInput
}

// Greet the user
print("Welcome to the Einstein equation program!")

// Loop until user input is valid
repeat {

    // Ask the user to enter the object's mass'
    print("Enter the mass of your object (kg): ")

    // Try to catch invalid input
    do {
        // typecast the object's mass from a string into a double, if possible
        if let objMassString = readLine(), let objMass = Double(objMassString) {
            // Check user's mass to make sure it is positive
            if objMass <= 0 {
                // If user does not enter a valid mass
                print("The mass must be greater than 0. Try again.")
            } else {
                // Calculate the energy
                let objEnergy = objMass * pow(speedOfLight, 2)

                // Display the energy, rounded to 3 decimal places
                print("\(String(format: "%.3f", objEnergy))J of energy can be released from your object.")

                // Break from the loop
                break
            }
        } else {
            // Catches the invalid input
            throw InputError.invalidInput
        }
    } catch InputError.invalidInput {
        // If user does not enter a number
        print("Please enter a number.")
    }
// Keep looping while the input is still invalid
} while (true)
