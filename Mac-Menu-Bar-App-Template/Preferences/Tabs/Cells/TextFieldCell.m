//
//  TextFieldCell.m
//  Mac-Menu-Bar-App-Template
//
//  Created by Alexandra Aurora Göttlicher
//

#import "TextFieldCell.h"

@implementation TextFieldCell
- (instancetype)init {
    self = [super init];

    if (self) {
        [self setTextField:[[NSTextField alloc] init]];
        [[self textField] setFont:[NSFont systemFontOfSize:13]];
        [self addSubview:[self textField]];

        [[self textField] setTranslatesAutoresizingMaskIntoConstraints:NO];
        [NSLayoutConstraint activateConstraints:@[
            [[[self textField] topAnchor] constraintEqualToAnchor:[self topAnchor]],
            [[[self textField] leadingAnchor] constraintEqualToAnchor:[[self label] trailingAnchor] constant:8],
            [[[self textField] trailingAnchor] constraintEqualToAnchor:[self trailingAnchor]],
            [[[self textField] bottomAnchor] constraintEqualToAnchor:[self bottomAnchor]]
        ]];
    }

    return self;
}

- (void)setTarget:(id)target {
    [[self textField] setDelegate:target];
    [[self textField] setTarget:target];
}

- (void)setPlaceholder:(NSString *)placeholder {
    [[self textField] setPlaceholderString:placeholder];
}

- (void)setText:(NSString *)text {
    [[self textField] setStringValue:text];
}

- (NSString *)getText {
    return [[self textField] stringValue];
}

- (void)setEnabled:(BOOL)enabled {
    [[self textField] setEnabled:enabled];
}
@end
