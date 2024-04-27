//
//  TextFieldCell.h
//  Mac-Menu-Bar-App-Template
//
//  Created by Alexandra Aurora Göttlicher
//

#import "AbstractCell.h"

@interface TextFieldCell : AbstractCell
@property(nonatomic)NSTextField* textField;
- (void)setTarget:(id)target;
- (void)setPlaceholder:(NSString *)placeholder;
- (void)setText:(NSString *)text;
- (NSString *)getText;
- (void)setEnabled:(BOOL)enabled;
@end
