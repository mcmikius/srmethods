//
//  ViewController.swift
//  TestWork
//
//  Created by Michail Bondarenko on 4/16/19.
//  Copyright © 2019 Michail Bondarenko. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let someTextToConsole = "Hello"
    let dayNumber = 1
    let numberOne = 4
    let numberTwo = 6
    let someNumber = 4
    let howMany = 5
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let printWord = printToConsole(string: someTextToConsole)
        print(printWord)
        dayFromNumber(number: dayNumber)
        let sum = sumOfTwoNumbers(first: numberOne, second: numberTwo)
        print(sum)
        let someResult = someArithmetic(someNumber: someNumber)
        print(someResult)
        cycleText(cycle: howMany)
        
        let fib = numberOfFibonachi(number: numberTwo)
        print(fib)
        let number = sumOfOdd(number: someNumber)
        print(number)
    }
//    1. Записать метод которий виведет в консоль сообщение С приветсвием "Привет” 
    func printToConsole(string: String) -> String {
        let string = string
        return string
    }
    //2. Записать метод которий будет выводить в консоль сообщение какой день недели относительно числа которое попадает в метод как аргумент (1 аргумент)
    func dayFromNumber(number: Int) -> Void {
        let day = number
        switch day {
        case 1:
            print("Monday")
        case 2:
            print("Tuesday")
        case 3:
            print("Wednesday")
        case 4:
            print("Thursday")
        case 5:
            print("Friday")
        case 6:
            print("Saturday")
        case 7:
            print("Sunday")
            
        default:
            print("The day is unreal")
        }
    }
    //3. Записать метод которий выводит в консоль суму двух чисел  (2 аргумента)
    func sumOfTwoNumbers(first: Int, second: Int) -> Int {
        let result = first + second
        return result
    }
    //4. Записать метод которий будет умножать задание число на 30 прибавлять 5 и возвращать результат вичислений, єтот результат нужно использовать в методе viewDidLoad для вивода в консоль  (1 аргумент + return)
    func someArithmetic(someNumber: Int) -> Int{
        let result = someNumber * 30 + 5
        return result
    }
    //5. Записать метод которий виведет в консоль сообщение С приветсвием "Привет” заданное количество раз (1 аргумент)
    func cycleText(cycle: Int) {
        for _ in 0..<cycle {
            print("Hello")
        }
    }
    //6. Написать метод который будет показывать число Фибоначчи например fib(num:6) должно вернуть число 8
    func numberOfFibonachi(number: Int) -> Int {
        if number == 0 {
            return 0
        } else if number == 1 {
            return 1
        }
        let result = numberOfFibonachi(number: number - 1) + numberOfFibonachi(number: number - 2)
        return result
    }
    // 7. Написать метод который принимает число N и показывает сумму первых N нечетных чисел, например oddSum(n:4) = (1 + 3 + 5 + 7) должно вернуть число 16 (1 аргумент + return)
    func sumOfOdd(number: Int) -> Int {
        var some = 1
        var result = 1
        for _ in 1..<number {
            some = some + 2
            result += some
        }

        return result
    }


}

