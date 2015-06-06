//
//  CommentGenerationSwitch.swift
//  Comment
//
//  Created by Pouya Kary on 6/5/15.
//  Copyright (c) 2015 Pouya Kary. All rights reserved.
//

import Foundation

/* ──────────────────────────────────────────────────────────────────────────────── *
 * :::::::::::::::: C O M M E N T   G E N E R A T E   C O M M E N T ::::::::::::::: *
 * ──────────────────────────────────────────────────────────────────────────────── */

func GenerateComment (comment: String, size: Int, section: Int, settings: LanguageSettings, style: String) -> String {

    var result: String = "\n"
    
    // ─────────────────────────────────────────────────────────────────────────────────────────────
    
    
        switch style {
        
        case "Class":
            
            result += StyleClass(comment, size, settings)
            
        case "Subsection":
            
            result += StyleSubSection(comment, size, settings)
            
        case "Section":
            
            result += StyleSection(comment, size, section, settings)
            
        default:
        
            result += StyleLine(size, settings)
            
        }
    
    
    // ─────────────────────────────────────────────────────────────────────────────────────────────
    
    return result

}