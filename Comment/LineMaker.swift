//
//  LineMaker.swift
//  Comment
//
//  Created by Pouya Kary on 6/6/15.
//  Copyright (c) 2015 Pouya Kary. All rights reserved.
//

import Foundation

func MakeLine (lineSize: Int) -> String {
    
    var result = ""
    
    for var i = 0; i < lineSize; i++ {
    
        result += "─"
    
    }
    
    return result
    
}