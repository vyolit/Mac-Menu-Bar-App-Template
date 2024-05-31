//
//  PreferenceManager.h
//  Mac-Menu-Bar-App-Template
//
//  Created by Alexandra Aurora Göttlicher
//

#import <Foundation/Foundation.h>

@interface PreferenceManager : NSObject {
    NSUserDefaults* _userDefaults;
}
@property(nonatomic, assign)BOOL launchAtLogin;
- (void)setPreference:(id)value forKey:(NSString *)key;
@end
