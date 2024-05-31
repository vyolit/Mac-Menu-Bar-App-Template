//
//  Environment.m
//  Mac-Menu-Bar-App-Template
//
//  Created by Alexandra Aurora Göttlicher
//

#import "Environment.h"
#import "Preferences/PreferenceManager.h"
#import "Preferences/PreferenceWindowController.h"

@implementation Environment
/**
 * Creates the shared instance.
 */
+ (instancetype)sharedInstance {
    static Environment* sharedInstance;
    static dispatch_once_t onceToken;

    dispatch_once(&onceToken, ^{
        sharedInstance = [Environment alloc];
    });

    return sharedInstance;
}

/**
 * Initializes the class with the shared instance.
 */
- (instancetype)init {
    return [Environment sharedInstance];
}
@end
