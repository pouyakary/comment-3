//
//  TextMaker.swift
//  Comment
//
//  Created by Pouya Kary on 6/6/15.
//  Copyright (c) 2015 Pouya Kary. All rights reserved.
//

import Foundation

func MakeTitle (text: String) -> String {

    var result = " "
    var letters = Array (text)

    for letter in letters {
        
        result += "\(letter) ".uppercaseString
        
    }

    return result
}