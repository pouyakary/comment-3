//
//  AppDelegate.swift
//  Comment
//
//  Created by Pouya Kary on 6/5/15.
//  Copyright (c) 2015 Pouya Kary. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

    var mainWindowController: MainWindowController?
    
    func applicationDidFinishLaunching(aNotification: NSNotification) {
        
        let mainWindowController = MainWindowController(windowNibName: "MainWindowController")
        
        mainWindowController.showWindow(self)
        
        self.mainWindowController = mainWindowController
        
    }

    func applicationWillTerminate(aNotification: NSNotification) {
        // Insert code here to tear down your application
    }

}

