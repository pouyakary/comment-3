//
//  TextMaker.swift
//  Comment
//
//  Created by Pouya Kary on 6/6/15.
//  Copyright (c) 2015 Pouya Kary. All rights reserved.
//

import Foundation

/* ──────────────────────────────────────────────────────────────────────────────── *
 * :::::::::::::::::::::: C O M M E N T   M A K E   T I T L E ::::::::::::::::::::: *
 * ──────────────────────────────────────────────────────────────────────────────── */

func MakeTitle (text: String) -> String {

    
    //
    // ─── SPACES ─────────────────────────────────────────────────────────────────────
    //
    
        var result = " "
        var letters = Array (text)
    
    //
    // ─── BODY ───────────────────────────────────────────────────────────────────────
    //

        for letter in letters {
        
            result += "\(letter) ".uppercaseString
        
        }
    
    
    // ─────────────────────────────────────────────────────────────────────────────────

    return result
}