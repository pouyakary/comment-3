//
//  Class.swift
//  Comment
//
//  Created by Pouya Kary on 6/6/15.
//  Copyright (c) 2015 Pouya Kary. All rights reserved.
//

import Foundation

func StyleClass (comment: String, size: Int, settings: LanguageSettings) -> String {

    var result = ""
    
    //
    // LINE ONE
    //
    
    result += "\(settings.MultiLineCommentStart) \(MakeLine(size)) \(settings.MultiLineCommentMidLineEnd)\n"
    
    
    //
    // LINE TWO
    //
    
    var comment_text = MakeTitle(comment)
    var dots = ""
    var case_of_short_lenght = ""
    
    if (size - comment_text.utf16Count) % 2 == 1 {
        
        case_of_short_lenght = ":"
        
    }
    
    for var i = 0; i < ( size - comment_text.utf16Count ) / 2; i++ {
        
        dots += ":"
        
    }
    
    result += "\(settings.MultiLineCommentMidLineStart) \(case_of_short_lenght)\(dots)\(comment_text)\(dots) \(settings.MultiLineCommentMidLineEnd)\n"
    
    
    //
    // LINE THREE
    //
    
    result += "\(settings.MultiLineCommentMidLineStart) \(MakeLine(size)) \(settings.MultiLineCommentEnd)\n"
    
    
    return result

}







