//
//  main.swift
//  Functions Training
//
//  Created by Ahmet Erkut on 8.10.2023.
//

import Foundation

class Task {
    
    func kmToMile(km: Double) -> Double {
        let mile = km * 0.621
        return mile
    }
    
    func rectangle(long: Int, short: Int) {
        let area = long * short
        print("Rectangle Area: \(area)")
    }
    
    func factorial(number: Int) -> Int {
        var result = 1
        
        for i in 1...number {
            result *= i
        }
        
        return result
    }
    
    func countE(text: String) {
        var count = 0
        
        for i in text {
            if i == "e" || i == "E" {
                count += 1
            }
        }
        
        print("This text has \(count) e.")
    }
    
    func interiorAngle(numberOfEdge: Int) -> String{
        if numberOfEdge < 3 {
            return "It must have at least 3 sides to be a shape."
        } else {
            let result = ((numberOfEdge - 2) * 180)
            return "Interior angle result: \(result)"
        }
    }
    
    func calculateSalary(day: Int) -> Int {
        // 1 day 8 hour, up 150 hour is shift
        let workHourPrice = 40
        let shiftHourPrice = 80
        let dayToHour = day * 8
        var salary = 0
        
        if dayToHour >= 150 {
            salary += (workHourPrice * 150)
            salary += ((dayToHour % 150) * shiftHourPrice)
        } else {
            salary += dayToHour * workHourPrice
        }
        
        return salary
    }
    
    func calculateCarParkHour(hour: Int) -> Int {
        var price = 0
        let overtime = hour - 1
        if hour >= 1 {
            price = 50
        }
        if overtime >= 1 {
            price += (overtime * 10)
        }
        
        return price
    }
}

let t = Task()

let mile = t.kmToMile(km: 12.3)
print("Mile: \(mile)")

t.rectangle(long: 12, short: 3)

let factorial = t.factorial(number: 6)
print("Factorial is: \(factorial)")

t.countE(text: "Embarrassing")

let interiorAngle = t.interiorAngle(numberOfEdge: 6)
print(interiorAngle)

let salary = t.calculateSalary(day: 20)
print("Salary: \(salary)")

let carParkPrice = t.calculateCarParkHour(hour: 8)
print("Car park price: \(carParkPrice)")


