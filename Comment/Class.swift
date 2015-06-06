//
//  Class.swift
//  Comment
//
//  Created by Pouya Kary on 6/6/15.
//  Copyright (c) 2015 Pouya Kary. All rights reserved.
//

import Foundation

/* ──────────────────────────────────────────────────────────────────────────────── *
 * ::::::::::::::::::::: C O M M E N T   S T Y L E   C L A S S :::::::::::::::::::: *
 * ──────────────────────────────────────────────────────────────────────────────── */

func StyleClass (comment: String, size: Int, settings: LanguageSettings) -> String {

    var result = ""
    
    //
    // ─── LINE ONE ───────────────────────────────────────────────────────────────────
    //

    
        result += "\(settings.MultiLineCommentStart) \(MakeLine(size)) \(settings.MultiLineCommentMidLineEnd)\n"
    
    
    //
    // ─── LINE TWO ───────────────────────────────────────────────────────────────────
    //
    
        //
        // WHAT WE NEED TO GENERATE
        //

        var comment_text = MakeTitle(comment)
        var dots = ""
        var case_of_short_lenght = ""
    
    
        //
        // IF THE SIZE - COMMENT TEXT SIZE MODE 2 BE 1 IT MEANS IF THE COMMENT
        // BE GENERATED THE RESULT WILL BE MISSING ONE ":", SO THIS IS HWAT WE
        // WE SIMPLY DO TO AVOID IT.
        //
    
        if (size - comment_text.utf16Count) % 2 == 1 {
        
            case_of_short_lenght = ":"
        
        }
    
    
        //
        // GENERATING THE DOTS BEFORE AND AFTER THE COMMENT TEXT
        //
    
        for var i = 0; i < ( size - comment_text.utf16Count ) / 2; i++ {
        
            dots += ":"
        
        }
    
    
        //
        // GENERATING THE LINE
        //
    
        result += "\(settings.MultiLineCommentMidLineStart) \(case_of_short_lenght)\(dots)\(comment_text)\(dots) \(settings.MultiLineCommentMidLineEnd)\n"
    
    
    //
    // ─── LINE THREE ─────────────────────────────────────────────────────────────────
    //

    
        result += "\(settings.MultiLineCommentMidLineStart) \(MakeLine(size)) \(settings.MultiLineCommentEnd)\n"
    
    
    // ────────────────────────────────────────────────────────────────────────────────
    
    return result

}







