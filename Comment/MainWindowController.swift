//
//  MainWindowController.swift
//  Comment
//
//  Created by Pouya Kary on 6/5/15.
//  Copyright (c) 2015 Pouya Kary. All rights reserved.
//

import Cocoa

/* ─────────────────────────────────────────────────────────────────────────────────────────────────── *
 * :::::::::::::::::::: C O M M E N T   M A I N W I N D O W   C O N T R O L L E R :::::::::::::::::::: *
 * ─────────────────────────────────────────────────────────────────────────────────────────────────── */

class MainWindowController: NSWindowController {

    
    //
    // ────────────────────────────────────────────────────── I ─────────
    //  :::::: O U T L E T S : :  :  :   :     :        :          :
    // ───────────────────────────────────────────────────────────────
    //
    

    //
    // ─── COMMENT SETTINGS ────────────────────────────────────────────────────────────────────────
    //
    
        @IBOutlet weak var Comment: NSTextField!
        @IBOutlet weak var CommentType: NSPopUpButton!
        @IBOutlet weak var CommentSize: NSTextField!
        @IBOutlet weak var CommentSection: NSTextField!
    
    //
    // ─── LANGUAGE SETTINGS ───────────────────────────────────────────────────────────────────────
    //
    
        @IBOutlet weak var QuickLanguageChooser: NSPopUpButton!
        @IBOutlet weak var MultiLineCommentStart: NSComboBox!
        @IBOutlet weak var MultiLineCommentEnd: NSComboBox!
        @IBOutlet weak var MultiLineCommentMidLineStart: NSComboBox!
        @IBOutlet weak var MultiLineCommentMidLineEnd: NSComboBox!
        @IBOutlet weak var InlineComment: NSComboBox!
    
    //
    // ─── RESULT VIEW SETTINGS ────────────────────────────────────────────────────────────────────
    //
    
        @IBOutlet var ResultView: NSTextView!
    
    
    // ─────────────────────────────────────────────────────────────────────────────────────────────

    

    
    
    
    //
    // ────────────────────────────────────────────────────── II ─────────
    //  :::::: A C T I O N S : :  :  :   :     :        :          :
    // ───────────────────────────────────────────────────────────────
    //

    
    //
    // ─── COMMENT STYLE CHOOSER OPTIONS ───────────────────────────────────────────────────────────
    //
    
        @IBAction func OnStyleSubsection(sender: AnyObject) {
        
            CommentSize.enabled = true
            CommentSection.enabled = false
        
        }
    
    
    // ─────────────────────────────────────────────────────────────────────────────────────────────
    
    
        @IBAction func OnStyleSection(sender: AnyObject) {
            
            Comment.enabled = true
            CommentSize.enabled = false
            CommentSection.enabled = true
            
        }
    
    
    // ─────────────────────────────────────────────────────────────────────────────────────────────
    
    
        @IBAction func OnStyleClass(sender: AnyObject) {
            
            Comment.enabled = true
            CommentSize.enabled = true
            CommentSection.enabled = false
            
        }
    
    
    // ─────────────────────────────────────────────────────────────────────────────────────────────
    
    
        @IBAction func OnSyleLine(sender: AnyObject) {
            
            Comment.enabled = false
            CommentSize.enabled = true
            CommentSection.enabled = false
            
        }

    //
    // ─── LANGUAGE CHOOSER ACTIONS ────────────────────────────────────────────────────────────────
    //
    
        @IBAction func OnLanC(sender: NSMenuItem) {
        
            MultiLineCommentStart.stringValue = "/*"
            MultiLineCommentEnd.stringValue = "*/"
            MultiLineCommentMidLineStart.stringValue = " *"
            MultiLineCommentMidLineEnd.stringValue = "*"
            InlineComment.stringValue = "//"
        
        }
    
    
    // ─────────────────────────────────────────────────────────────────────────────────────────────
    
    
        @IBAction func OnLangPython(sender: NSMenuItem) {
        
            MultiLineCommentStart.stringValue = "#"
            MultiLineCommentEnd.stringValue = "#"
            MultiLineCommentMidLineStart.stringValue = "#"
            MultiLineCommentMidLineEnd.stringValue = "#"
            InlineComment.stringValue = "#"
        
        }
    
    //
    // ─── BUTTON ACTIONS ──────────────────────────────────────────────────────────────────────────
    //
    
        @IBAction func OnGenerateComment(sender: AnyObject) {
 
            //
            // SETTINGS
            //
            
            let settings = LanguageSettings(MultiLineCommentStart: MultiLineCommentStart.stringValue,
                                              MultiLineCommentEnd: MultiLineCommentEnd.stringValue,
                                     MultiLineCommentMidLineStart: MultiLineCommentMidLineStart.stringValue,
                                       MultiLineCommentMidLineEnd: MultiLineCommentMidLineEnd.stringValue,
                                                    InlineComment: InlineComment.stringValue)
            
            let comment_size = CommentSize.stringValue.toInt()!
            let comment_section = CommentSection.stringValue.toInt()!
            
            
            //
            // GENERATING THE COMMENT
            //
            
            ResultView.string = GenerateComment(Comment.stringValue, comment_size, comment_section, settings)
            
        }
    
    
    // ─────────────────────────────────────────────────────────────────────────────────────────────
    
    
        @IBAction func OnCleanPad(sender: NSButton) {
            
            ResultView.string = ""
            
        }
    
    
    // ─────────────────────────────────────────────────────────────────────────────────────────────
    
    
    
    
    
    //
    // ────────────────────────────────────────────────────────────────────── III ─────────
    //  :::::: W I N D O W   H A N D L E R S : :  :  :   :     :        :          :
    // ───────────────────────────────────────────────────────────────────────────────
    //
    

    // ─────────────────────────────────────────────────────────────────────────────────────────────
    
        override func windowDidLoad() {
        
            super.windowDidLoad()
        
        }
    
    // ─────────────────────────────────────────────────────────────────────────────────────────────
}




