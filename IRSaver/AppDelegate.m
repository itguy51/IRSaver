//
//  AppDelegate.m
//  IRSaver
//
//  Created by Josh Pruim on 8/27/14.
//  Copyright (c) 2014 Josh Pruim. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    //Make the menu bar disappear.
    [[NSApplication sharedApplication] setPresentationOptions: NSApplicationPresentationAutoHideDock|NSApplicationPresentationAutoHideMenuBar];
    //Always on top.
    [_window setLevel:NSMainMenuWindowLevel +2];
    //Resizable and no persistent features
    [_window setStyleMask:NSBorderlessWindowMask|NSResizableWindowMask];
    //Let the window be moved anywhere
    [_window setMovableByWindowBackground:YES];
    //Set a timer for the color change
    [NSTimer scheduledTimerWithTimeInterval:2.0 target:self selector:@selector(changeWindowColor:) userInfo:nil repeats:YES];
    //Make the shadow go away
    [_window setHasShadow:NO];
}

- (void) changeWindowColor:(id) sender{
    float r = (rand() % 255) / 255.0f; //Random red
    float g = (rand() % 255) / 255.0f; //Random green
    float b = (rand() % 255) / 255.0f; //Random blue
    //Set window background color to random RGB
    [_window setBackgroundColor:[NSColor colorWithCalibratedRed:r green:g blue:b alpha:1.0f]];

}

@end
