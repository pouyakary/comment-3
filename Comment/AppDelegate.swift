//
//  AppDelegate.swift
//  Comment
//
//  Created by Pouya Kary on 6/5/15.
//  Copyright (c) 2015 Pouya Kary. All rights reserved.
//

import Cocoa

/* ──────────────────────────────────────────────────────────────────────────────── *
 * :::::::::::: C O M M E N T   A P P L I C A T I O N   D E L E G A T E ::::::::::: *
 * ──────────────────────────────────────────────────────────────────────────────── */

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {
    
    //
    // ─── SPACES ─────────────────────────────────────────────────────────────────────
    //

        var mainWindowController: MainWindowController?
    
    //
    // ─── FUNCTIONS ──────────────────────────────────────────────────────────────────
    //
    
        func applicationDidFinishLaunching(aNotification: NSNotification) {
        
            let mainWindowController = MainWindowController(windowNibName: "MainWindowController")
        
            mainWindowController.showWindow(self)
        
            self.mainWindowController = mainWindowController
        
        }
    

    // ────────────────────────────────────────────────────────────────────────────────


        func applicationWillTerminate(aNotification: NSNotification) {
            
            // Insert code here to tear down your application
            
        }
    
    
    // ────────────────────────────────────────────────────────────────────────────────
}

