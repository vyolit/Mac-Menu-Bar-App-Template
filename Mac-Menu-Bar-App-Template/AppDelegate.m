//
//  AppDelegate.m
//  Mac-Menu-Bar-App-Template
//
//  Created by Alexandra Aurora Göttlicher
//

#import "AppDelegate.h"
#import "Environment.h"
#import "Preferences/PreferenceManager.h"
#import "Preferences/PreferenceWindowController.h"
#import "Utils/CFUtil.h"

@interface AppDelegate ()
@end

@implementation AppDelegate
/**
 * Registers and initializes required classes for later use.
 */
- (void)applicationWillFinishLaunching:(NSNotification *)notification {
    [[Environment sharedInstance] setAppDelegate:self];
    [[Environment sharedInstance] setPreferenceManager:[[PreferenceManager alloc] init]];
    [[Environment sharedInstance] setPreferenceWindowController:[[PreferenceWindowController alloc] init]];
}

/**
 * Creates the status item.
 */
- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    _statusItem = [[NSStatusBar systemStatusBar] statusItemWithLength:NSVariableStatusItemLength];
    [self createStatusItemMenu];
}

/**
 * Creates the status item's menu.
 */
- (void)createStatusItemMenu {
    [_statusItem setMenu:[[NSMenu alloc] init]];
    [[_statusItem button] setImage:[NSImage imageWithSystemSymbolName:@"app" accessibilityDescription:nil]];

    NSString* aboutItemTitle = [NSString stringWithFormat:@"%@ %@", NSLocalizedString(@"StatusItemAbout", nil), [CFUtil getNameFromBundle:[NSBundle mainBundle]]];
    NSMenuItem* aboutItem = [[NSMenuItem alloc] initWithTitle:aboutItemTitle action:@selector(openAbout) keyEquivalent:@""];
    [[_statusItem menu] addItem:aboutItem];

    NSString* preferencesItemTitle = NSLocalizedString(@"StatusItemPreferences", nil);
    NSMenuItem* preferencesItem = [[NSMenuItem alloc] initWithTitle:preferencesItemTitle action:@selector(openPreferences) keyEquivalent:@","];
    [[_statusItem menu] addItem:preferencesItem];
    
    [[_statusItem menu] addItem:[NSMenuItem separatorItem]];
    
    NSString* quitItemTitle = [NSString stringWithFormat:@"%@ %@...", NSLocalizedString(@"StatusItemQuit", nil), [CFUtil getNameFromBundle:[NSBundle mainBundle]]];
    NSMenuItem* quitItem = [[NSMenuItem alloc] initWithTitle:quitItemTitle action:@selector(quit) keyEquivalent:@"q"];
    [[_statusItem menu] addItem:quitItem];
}

/**
 * Opens the about panel.
 */
- (void)openAbout {
    [[[Environment sharedInstance] preferenceWindowController] showWithTab:PreferenceTabAbout];
}

/**
 * Opens the preferences panel.
 */
- (void)openPreferences {
    [[[Environment sharedInstance] preferenceWindowController] show];
}

/**
 * Quits the app.
 */
- (void)quit {
    [[NSApplication sharedApplication] terminate:nil];
}
@end
