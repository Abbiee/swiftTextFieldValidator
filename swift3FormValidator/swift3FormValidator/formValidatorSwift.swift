//
//  formValidatorSwift.swift
//  swift3FormValidator
//
//  Created by admin on 14/05/17.
//  Copyright © 2017 admin. All rights reserved.
//

import UIKit
extension String {
    
// Validating Email ID
    
 func isValidEmail(testStr:String) -> Bool {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}"
        
        let emailTest = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        return emailTest.evaluate(with: testStr)
    }
// Validating the User name
    
func isValidUserName(testStr:String) -> Bool {
        let RegEx = "\\A\\w{7,18}\\z"
        let Test = NSPredicate(format:"SELF MATCHES %@", RegEx)
        return Test.evaluate(with: testStr)
    }

// Validating the phone number
    
var isPhoneNumber: Bool {
        do {
            let detector = try NSDataDetector(types: NSTextCheckingResult.CheckingType.phoneNumber.rawValue)
            let matches = detector.matches(in: self, options: [], range: NSMakeRange(0, self.characters.count))
            if let res = matches.first {
                return res.resultType == .phoneNumber && res.range.location == 0 && res.range.length == self.characters.count
            } else {
                return false
            }
        } catch {
            return false
        }
        
    }
    
// validating the password 
/*
 
     Use the function of Swift 3.0.
     
     1. 8 characters length
     
     2. alphabet
     
     3. special character
     
     regex Syntax Explanation :
     
     (?=.[a-z]) for Character.
     
     (?=.[$@$#!%?&]) for special character.
     
     {8,} for length which you want to prefer.
 
 */
    
func isPasswordValid(_ password : String) -> Bool{
        let passwordTest = NSPredicate(format: "SELF MATCHES %@", "^(?=.*[a-z])(?=.*[$@$#!%*?&])[A-Za-z\\d$@$#!%*?&]{8,}")
        return passwordTest.evaluate(with: password)
    }
   
// validating the password and confirm password are same........................
    
    
func isPasswordSame(password: String , confirmPassword : String) -> Bool {
        if password == confirmPassword{
            return true
        }
        else{
            return false
        }
    }
    
// validating Blank Text........................
   
var  isBlank:Bool {
       return self.trimmingCharacters(in: CharacterSet.whitespacesAndNewlines).isEmpty
       
    }
}
