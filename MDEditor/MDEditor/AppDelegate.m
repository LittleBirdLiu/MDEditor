//
//  AppDelegate.m
//  MDEditor
//
//  Created by Allen Liu on 8/3/16.
//  Copyright © 2016 Allen Liu. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@property (weak) IBOutlet NSWindow *window;
@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    // Insert code here to initialize your application
    NSWindowController * wc     =[[Mainwindow alloc]init];
    [wc showWindow:self];
}

- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}

@end
