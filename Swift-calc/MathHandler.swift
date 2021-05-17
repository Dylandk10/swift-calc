//
//  MathHandler.swift
//  Swift-calc
//
//  Created by Dylan Kelly on 5/17/21.
//

import Foundation


class MathHandler {
    
    
    var firstNum: String
    var secondNum: String
    var result: String
    var sign: String
    
    //state var to hold whether to add to first or second var
    var state: Bool
    init() {
        self.firstNum = ""
        self.secondNum = ""
        self.result = ""
        self.sign = ""
        self.state = true
    }
    
    //add to the vars needed since it checks for nil just ass to num 
    public func addToVar(num: String?) -> Void {
        if num != nil{
            if self.state {
                self.firstNum += num!
            } else {
                self.secondNum += num!
            }
        } else {
            print("DEGUB: nil was passed")
        }
    }
    
    
    public func getVar() -> String {
        return self.state ? self.firstNum : self.secondNum
    }
    
    //switch states
    public func switchState() -> Void {
        if self.state {
            self.state = false
        } else {
            self.state = true
        }
    }
    
    //clear all vars
    public func clear() -> Void {
        self.firstNum = ""
        self.secondNum = ""
        self.sign = ""
        self.result = ""
        self.state = true
    }
    
    
    // set the sign
    public func setSign(sign: String) -> Void {
        if self.sign == ""{
            self.sign = sign
            self.switchState()
        } else {
            self.firstNum = String(self.calculate())
            self.secondNum = ""
            self.sign = sign
        }
    }
    
    
    //calculate based on frist number, second number and sign 
    public func calculate() -> Int {
        let firstNumInt: Int = Int(self.firstNum) ?? 0
        let secondNumInt: Int = Int(self.secondNum) ?? 0
        var result: Int = 0
        
        
        switch sign {
        case "+":
            result = firstNumInt + secondNumInt
            break
        case "-":
            result = firstNumInt - secondNumInt
            break
        case "x":
            result = firstNumInt * secondNumInt
            break
        case "/":
            if firstNumInt != 0 {
                result = firstNumInt / secondNumInt
            } else {
                result = 0
            }
            break
        default:
            print("Ran into nil error")
        }
        return result
    }
    
    
}
