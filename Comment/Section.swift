//
//  Section.swift
//  Comment
//
//  Created by Pouya Kary on 6/6/15.
//  Copyright (c) 2015 Pouya Kary. All rights reserved.
//

import Foundation

/* ──────────────────────────────────────────────────────────────────────────────── *
 * ::::::::::::::::::: C O M M E N T   S T Y L E   S E C T I O N :::::::::::::::::: *
 * ──────────────────────────────────────────────────────────────────────────────── */

func StyleSection (comment: String, size: Int, section: Int, settings: LanguageSettings) -> String {
    
    var result = ""
    var comment_text = MakeTitle(comment)
    
    
    //
    // ─── LINE ONE ───────────────────────────────────────────────────────────────────
    //

        result += "\(settings.InlineComment)\n"
    
    //
    // ─── LINE TWO ───────────────────────────────────────────────────────────────────
    //

        result += "\(settings.InlineComment) \(MakeLine(39 + comment_text.utf16Count)) \(section) ─────────\n"
    
    //
    // ─── LINE THREE ─────────────────────────────────────────────────────────────────
    //

        result += "\(settings.InlineComment)  ::::::\(comment_text): :  :  :   :     :        :          :\n"
    
    //
    // ─── LINE FOUR ──────────────────────────────────────────────────────────────────
    //

        result += "\(settings.InlineComment) \(MakeLine(48 + comment_text.utf16Count))\n"
    
    //
    // ─── LINE FIVE ──────────────────────────────────────────────────────────────────
    //
    
        result += "\(settings.InlineComment)\n"
    
    
    // ────────────────────────────────────────────────────────────────────────────────

    
    return result
}







