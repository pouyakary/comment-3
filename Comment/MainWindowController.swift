//
//  MainWindowController.swift
//  Comment
//
//  Created by Pouya Kary on 6/5/15.
//  Copyright (c) 2015 Pouya Kary. All rights reserved.
//

import Cocoa
import AppKit

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
        @IBOutlet weak var MultiLineCommentStart: NSTextField!
        @IBOutlet weak var MultiLineCommentEnd: NSTextField!
        @IBOutlet weak var MultiLineCommentMidLineStart: NSTextField!
        @IBOutlet weak var MultiLineCommentMidLineEnd: NSTextField!
        @IBOutlet weak var InlineComment: NSTextField!
    
    
    //
    // ─── RESULT VIEW SETTINGS ────────────────────────────────────────────────────────────────────
    //
    
        @IBOutlet var ResultView: NSTextView!
    
    
    // ─────────────────────────────────────────────────────────────────────────────────────────────
    
    
        var style = "Subsection"
    
    
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
        
            style = "Subsection"
            Comment.enabled = true
            CommentSize.enabled = true
            CommentSection.enabled = false
        
        }
    
    
    // ─────────────────────────────────────────────────────────────────────────────────────────────
    
    
        @IBAction func OnStyleSection(sender: AnyObject) {
            
            style = "Section"
            Comment.enabled = true
            CommentSize.enabled = false
            CommentSection.enabled = true
            
        }
    
    
    // ─────────────────────────────────────────────────────────────────────────────────────────────
    
    
        @IBAction func OnStyleClass(sender: AnyObject) {
            
            style = "Class"
            Comment.enabled = true
            CommentSize.enabled = true
            CommentSection.enabled = false
            
        }
    
    
    // ─────────────────────────────────────────────────────────────────────────────────────────────
    
    
        @IBAction func OnSyleLine(sender: AnyObject) {
            
            style = "Line"
            Comment.enabled = false
            CommentSize.enabled = true
            CommentSection.enabled = false
            
        }

    
    //
    // ─── LANGUAGE CHOOSER ACTIONS ────────────────────────────────────────────────────────────────
    //
    
        func SetLanguageSettings (Fsize: String, FMulitLineCommentStart: String, FMultiLineCommentEnd: String, FMuliLineCommentMidLineStart: String, FMultiLineCommentMidLineEnd: String, FInlineComment: String) {
        
            CommentSize.stringValue = Fsize
        
            MultiLineCommentStart.stringValue = FMulitLineCommentStart
            MultiLineCommentEnd.stringValue = FMultiLineCommentEnd
            MultiLineCommentMidLineStart.stringValue = FMuliLineCommentMidLineStart
            MultiLineCommentMidLineEnd.stringValue = FMultiLineCommentMidLineEnd
        
            InlineComment.stringValue = FInlineComment
        
        }
    
    
    // ─────────────────────────────────────────────────────────────────────────────────────────────
    
    
        @IBAction func OnLangArendelle(sender: AnyObject) {
            
            SetLanguageSettings("55",
                FMulitLineCommentStart: "*-",
                FMultiLineCommentEnd: "-*",
                FMuliLineCommentMidLineStart: " -",
                FMultiLineCommentMidLineEnd: "-",
                FInlineComment: "--")
            
        }
    
    
    // ─────────────────────────────────────────────────────────────────────────────────────────────
    
    
        @IBAction func OnLanC(sender: NSMenuItem) {
            
            SetLanguageSettings("80",
                FMulitLineCommentStart: "/*",
                FMultiLineCommentEnd: "*/",
                FMuliLineCommentMidLineStart: " *",
                FMultiLineCommentMidLineEnd: "*",
                FInlineComment: "//")
        
        }
    
    
    // ─────────────────────────────────────────────────────────────────────────────────────────────
    
    
        @IBAction func OnLangPython(sender: NSMenuItem) {
            
            SetLanguageSettings("80",
                FMulitLineCommentStart: "#",
                FMultiLineCommentEnd: "#",
                FMuliLineCommentMidLineStart: "#",
                FMultiLineCommentMidLineEnd: "#",
                FInlineComment: "#")

        
        }
    
    
    //
    // ─── BUTTON ACTIONS ──────────────────────────────────────────────────────────────────────────
    //
    
        @IBAction func OnGenerate(sender: AnyObject) {
            
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
            
            ResultView.string = GenerateComment(Comment.stringValue, comment_size, comment_section, settings, style)
            
        }
    
    // ─────────────────────────────────────────────────────────────────────────────────────────────
    
    
        @IBAction func OnCopyResult(sender: NSButton) {
    
            let pasteboard = NSPasteboard.generalPasteboard()
            pasteboard.clearContents()
            pasteboard.setString(ResultView.string!, forType: NSPasteboardTypeString)
            
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




