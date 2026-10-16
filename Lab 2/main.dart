/*
Name: Andrean Kong Gang Hung
Student ID: 103325
15 Oct 2026
Lab 2: Overtime Payment Program
*/

import 'myLib.dart' as emp;

void main (){

    //Variable declaration
    double extraPayPerHr;

    var william = emp.Employee('Manager', 'Madrid', 5000, 7);

    if (william.salary >= 4000) {
        extraPayPerHr = 10;
    } else {
        extraPayPerHr = 20;
    }
  
  double total = william.salary + (william.overtimeHr * extraPayPerHr);
  print('Total Salary = \$$total USD');
}