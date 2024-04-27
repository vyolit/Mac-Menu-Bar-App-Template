//
//  GeneralPreferenceViewController.m
//  Mac-Menu-Bar-App-Template
//
//  Created by Alexandra Aurora Göttlicher
//

#import "GeneralPreferenceViewController.h"

@implementation GeneralPreferenceViewController
- (void)viewDidAppear {
    [super viewDidAppear];
    [[[self view] window] setContentSize:NSSizeFromCGSize(CGSizeMake(430, 170))];
}

- (void)loadView {
    [self setView:[[NSView alloc] init]];
    
    [self setLaunchAtLoginCell:[[CheckboxCell alloc] init]];
    [[self launchAtLoginCell] setTitle:[NSString stringWithFormat:@"%@:", NSLocalizedString(@"GeneralPreferencesStartup", nil)]];
    [[self launchAtLoginCell] setCheckboxTitle:NSLocalizedString(@"GeneralPreferencesStartupLabel", nil)];
    [[self launchAtLoginCell] setAction:@selector(setLaunchAtLogin)];
    [[self launchAtLoginCell] setTarget:self];
    [[self view] addSubview:[self launchAtLoginCell]];

    [[self launchAtLoginCell] setTranslatesAutoresizingMaskIntoConstraints:NO];
    [NSLayoutConstraint activateConstraints:@[
        [[[self launchAtLoginCell] heightAnchor] constraintEqualToConstant:20],
        [[[self launchAtLoginCell] topAnchor] constraintEqualToAnchor:[[self view] topAnchor] constant:16],
        [[[self launchAtLoginCell] leadingAnchor] constraintEqualToAnchor:[[self view] leadingAnchor] constant:40],
        [[[self launchAtLoginCell] trailingAnchor] constraintEqualToAnchor:[[self view] trailingAnchor] constant:-40]
    ]];

    [self loadPreferences];
}

- (void)setLaunchAtLogin {
    PreferenceManager* preferenceManager = [[Environment sharedInstance] preferenceManager];
    BOOL launchAtLogin = [[self launchAtLoginCell] getIsOn];
    [preferenceManager setPreference:@(launchAtLogin) forKey:kPreferenceKeyLaunchAtLogin];

    SMLoginItemSetEnabled((__bridge CFStringRef)@"codes.aurora.Mac-Menu-Bar-App-TemplateAutoLauncher", (Boolean)launchAtLogin);
}

- (void)loadPreferences {
    PreferenceManager* preferenceManager = [[Environment sharedInstance] preferenceManager];
    BOOL launchAtLogin = [preferenceManager launchAtLogin];
    [[self launchAtLoginCell] setOn:launchAtLogin];
}
@end
