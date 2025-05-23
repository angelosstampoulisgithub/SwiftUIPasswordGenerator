//
//  Helper.swift
//  SwiftUIPasswordGenerator
//
//  Created by Angelos Staboulis on 24/5/25.
//

import Foundation
class Helper{
    func randomPassword(pwdLength: Int) -> String {
        let pwdLetters = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ!@#$%&()0123456789"
        var passWord = ""
        for _ in 0 ..< pwdLength {
            passWord.append(pwdLetters.randomElement()!)
        }
        return passWord
    }
}
