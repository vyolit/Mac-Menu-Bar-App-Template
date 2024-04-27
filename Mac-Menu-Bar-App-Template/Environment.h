//
//  Environment.h
//  Mac-Menu-Bar-App-Template
//
//  Created by Alexandra Aurora Göttlicher
//

#import <Foundation/Foundation.h>
#import "AppDelegate.h"
#import "Preferences/PreferenceManager.h"
#import "Preferences/PreferenceWindowController.h"

@class AppDelegate;
@class PreferenceManager;
@class PreferenceWindowController;

@interface Environment : NSObject
@property(nonatomic)AppDelegate* appDelegate;
@property(nonatomic)PreferenceManager* preferenceManager;
@property(nonatomic)PreferenceWindowController* preferenceWindowController;
+ (instancetype)sharedInstance;
@end
