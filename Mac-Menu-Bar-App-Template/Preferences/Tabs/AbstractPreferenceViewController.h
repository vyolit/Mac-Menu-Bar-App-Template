//
//  AbstractPreferenceViewController.h
//  Mac-Menu-Bar-App-Template
//
//  Created by Alexandra Aurora Göttlicher
//

#import <AppKit/AppKit.h>

@class PreferenceManager;

@interface AbstractPreferenceViewController : NSViewController {
    PreferenceManager* _preferenceManager;
}
@end
