//
//  Line.swift
//  Comment
//
//  Created by Pouya Kary on 6/6/15.
//  Copyright (c) 2015 Pouya Kary. All rights reserved.
//

import Foundation

/* ──────────────────────────────────────────────────────────────────────────────── *
 * :::::::::::::::::::::: C O M M E N T   S T Y L E   L I N E ::::::::::::::::::::: *
 * ──────────────────────────────────────────────────────────────────────────────── */

func StyleLine (size: Int, comment: LanguageSettings) -> String {
    
    return "\(comment.InlineComment) \(MakeLine(size))\n"
    
}