//
//  SliderCell.h
//  Mac-Menu-Bar-App-Template
//
//  Created by Alexandra Aurora Göttlicher
//

#import "AbstractCell.h"

@interface SliderCell : AbstractCell
@property(nonatomic)NSSlider* slider;
- (void)setTarget:(id)target;
- (void)setAction:(SEL)action;
- (void)setMinValue:(NSInteger)minValue;
- (void)setMaxValue:(NSInteger)maxValue;
- (void)setValue:(NSInteger)value;
- (NSInteger)getValue;
- (void)setUseTickMarks:(BOOL)useTickMarks;
- (void)setTickMarksCount:(NSUInteger)tickMarksCount;
@end
