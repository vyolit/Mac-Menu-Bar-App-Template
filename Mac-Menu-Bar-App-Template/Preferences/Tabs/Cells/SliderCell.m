//
//  SliderCell.m
//  Mac-Menu-Bar-App-Template
//
//  Created by Alexandra Aurora Göttlicher
//

#import "SliderCell.h"

@implementation SliderCell
- (instancetype)init {
    self = [super init];

    if (self) {
        [self setSlider:[[NSSlider alloc] init]];
        [self addSubview:[self slider]];

        [[self slider] setTranslatesAutoresizingMaskIntoConstraints:NO];
        [NSLayoutConstraint activateConstraints:@[
            [[[self slider] widthAnchor] constraintEqualToConstant:150],
            [[[self slider] topAnchor] constraintEqualToAnchor:[self topAnchor]],
            [[[self slider] leadingAnchor] constraintEqualToAnchor:[[self label] trailingAnchor] constant:8],
            [[[self slider] bottomAnchor] constraintEqualToAnchor:[self bottomAnchor]]
        ]];
    }

    return self;
}

- (void)setTarget:(id)target {
    [[self slider] setTarget:target];
}

- (void)setAction:(SEL)action {
    [[self slider] setAction:action];
}

- (void)setMinValue:(NSInteger)minValue {
    [[self slider] setMinValue:minValue];
}

- (void)setMaxValue:(NSInteger)maxValue {
    [[self slider] setMaxValue:maxValue];
}

- (void)setValue:(NSInteger)value {
    [[self slider] setIntegerValue:value];
}

- (NSInteger)getValue {
    return [[self slider] integerValue];
}

- (void)setUseTickMarks:(BOOL)useTickMarks {
    [[self slider] setAllowsTickMarkValuesOnly:useTickMarks];
}

- (void)setTickMarksCount:(NSUInteger)tickMarksCount {
    [[self slider] setNumberOfTickMarks:tickMarksCount];
}
@end
