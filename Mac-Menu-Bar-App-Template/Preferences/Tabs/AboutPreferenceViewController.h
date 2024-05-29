//
//  AboutPreferenceViewController.h
//  Mac-Menu-Bar-App-Template
//
//  Created by Alexandra Aurora Göttlicher
//

#import <AppKit/AppKit.h>
#import "SeparatorCell.h"
#import "../../Environment.h"
#import "../../Utils/CFUtil.h"

@interface AboutPreferenceViewController : NSViewController
@property(nonatomic)NSTextField* titleLabel;
@property(nonatomic)NSTextField* versionLabel;
@property(nonatomic)SeparatorCell* versionSeparatorCell;
@property(nonatomic)NSButton* sponsorButton;
@property(nonatomic)NSTextField* sponsorLabel;
@property(nonatomic)SeparatorCell* sponsorSeparatorCell;
@property(nonatomic)NSButton* githubButton;
@property(nonatomic)NSTextField* creditsLabel;
@property(nonatomic)SeparatorCell* creditsSeparatorCell;
@property(nonatomic)NSTextField* copyrightLabel;
@end
