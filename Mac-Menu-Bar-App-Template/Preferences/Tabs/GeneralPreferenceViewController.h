//
//  GeneralPreferenceViewController.h
//  Mac-Menu-Bar-App-Template
//
//  Created by Alexandra Aurora Göttlicher
//

#import <AppKit/AppKit.h>
#import "../../Environment.h"
#import "Cells/CheckboxCell.h"
#import "ServiceManagement/ServiceManagement.h"

@interface GeneralPreferenceViewController : NSViewController <NSTextFieldDelegate>
@property(nonatomic)CheckboxCell* launchAtLoginCell;
@end
