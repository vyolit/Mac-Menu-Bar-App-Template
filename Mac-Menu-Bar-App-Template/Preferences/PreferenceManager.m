//
//  PreferenceManager.m
//  Mac-Menu-Bar-App-Template
//
//  Created by Alexandra Aurora Göttlicher
//

#import "PreferenceManager.h"
#import "PreferenceKeys.h"

@implementation PreferenceManager
- (instancetype)init {
    self = [super init];

    if (self) {
        _userDefaults = [NSUserDefaults standardUserDefaults];
        [self reloadPreferences];
    }

    return self;
}

- (void)reloadPreferences {
    [_userDefaults registerDefaults:@{
        kPreferenceKeyLaunchAtLogin: @(kPreferenceKeyLaunchAtLoginDefaultValue)
    }];

    [self setLaunchAtLogin:[[_userDefaults objectForKey:kPreferenceKeyLaunchAtLogin] boolValue]];
}

- (void)setPreference:(id)value forKey:(NSString *)key {
    [_userDefaults setObject:value forKey:key];
    [self reloadPreferences];
}
@end
