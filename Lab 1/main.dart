/*
Name: Andrean Kong Gang Hung
Student ID: 103325
8 Oct 2026
Lab 1: Pizza Order Calculator
 */

import 'dart:io';

void main(){
    
    //Variable Declaration
    double totalPayment = 0.0;

    //User Input
    print("Enter size of Pizza (S, M, L):");
    String? pizzaSize = stdin.readLineSync();

    print("Enter quantity of Pizza:");
    int pizzaQuantity = int.parse(stdin.readLineSync()!);

    //Switch Statement
    switch(pizzaSize){
        case "S":
            print("Small Pizza selected.");
            totalPayment += 5.0 * pizzaQuantity;
            break;
        case "M":
            print("Medium Pizza selected.");
            totalPayment += 7.0 * pizzaQuantity;
            break;
        case "L":
            print("Large Pizza selected.");
            totalPayment += 10.0 * pizzaQuantity;
            break;
        case "Stop":
            print("Here is your total payment for the order: $totalPayment");
            break;
        default:
            print("Invalid size entered.");
    }

}