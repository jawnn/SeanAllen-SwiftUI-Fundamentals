//
//  String+Ext.swift
//  Appetizers
//
//  Created by Roberto Manese III on 10/25/23.
//

import Foundation
import RegexBuilder

extension String {

    var isValidEmail: Bool {
// Pre iOS 16 way of writing out regex expressions.

//        let emailFormat = /[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}/
//        let emailPredicate = NSPredicate(format: "SELF MATCHES %@", emailFormat)
//        return emailPredicate.evaluate(with: self)

        // Post iOS 16 regex expression. more readable
        

        let emailRegex = Regex {
            OneOrMore {
                CharacterClass(
                    .anyOf("._%+-"),
                    ("A"..."Z"),
                    ("0"..."9"),
                    ("a"..."z")
                )
            }
            "@"
            OneOrMore {
                CharacterClass(
                    .anyOf("-"),
                    ("A"..."Z"),
                    ("a"..."z"),
                    ("0"..."9")
                )
            }
            "."
            Repeat(2...64) {
                CharacterClass(
                    ("A"..."Z"),
                    ("a"..."z")
                )
            }
        }

        return self.wholeMatch(of: emailRegex) != nil
    }



}
