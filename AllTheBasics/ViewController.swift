//
//  ViewController.swift
//  AllTheBasics
//
//  Created by James Campagno on 6/28/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let greeting = passwordCombo(username: "Jerry", password: 3)// username is external
        print(greeting)
        // argument 'a' is excluded by default
        //averageIsAbove75(55.0, b:25.8, c:24.3)
        //averageIsAbove75(55.0, 25.8, 24.3) // if we will be calling this function
        //we are able to omit the external names for b and c arguments 
        //thanks to underbar placed infront of the internal name.
    }
    // a, b, c is internal names of the arguments, the name to the first parameter is external by default. When this function is called to make b and c invisible place underbar infront of the argument in order to specify that there is no external name.
    func averageIsAbove75(a: Double, _ b: Double, _ c: Double) -> Bool {
    
        let average = (a + b + c) / 3
        return average > 75 // evaluating constant statement, returning Bool, true or false.
            
    }
    func passwordCombo(username username: String, password: Int) -> String {
        // if you want external name here, you have to write it twice. first username is external, and second is internal.
        
        switch username {
        case "Jerry", "Elane", "Michael":
            if password % 3 == 0 {
                return "Welcome!"
            }
            return "Access Denied"
        default: return "Access Denied"
        }
    }
    
    func doIt(a: String, b: Float) -> Float {
        guard let floatA = Int(a) else { return 0.0}
        
        switch floatA {
        case 1...5:
            
            switch b {
            case 10.5...15.0: return Float(floatA) * b
            case 20.0...30.5: return Float(floatA) * b
            default: return 0.0
            }
        default: return 0.0
        }
    }
    
    ///   or another way...
//    func duIt(a: String, b: Float) -> Float {
//        switch b {
//        case 10.5...15.0: print("Very nice!")
//        case 20.0...30.5: print("Very nice!")
//        default:
//            return 0.0
//        }
//        
//        switch a {
//        case "1": return 1 * b
//        case "2": return 2 * b
//        case "3": return 3 * b
//        case "4": return 4 * b
//        case "5": return 5 * b
//        default: return 0.0
//        }
//    }
    
    
    
}