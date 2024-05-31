//
//  GeneralPreferenceViewController.h
//  Mac-Menu-Bar-App-Template
//
//  Created by Alexandra Aurora Göttlicher
//

#import "AbstractPreferenceViewController.h"

@class CheckboxCell;

@interface GeneralPreferenceViewController : AbstractPreferenceViewController <NSTextFieldDelegate>
@property(nonatomic)CheckboxCell* launchAtLoginCell;
@end
