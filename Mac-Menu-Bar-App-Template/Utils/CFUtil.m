//
//  CFUtil.m
//  Mac-Menu-Bar-App-Template
//
//  Created by Alexandra Aurora Göttlicher
//

#import "CFUtil.h"

@implementation CFUtil
+ (NSString *)getNameFromBundle:(NSBundle *)bundle {
    return [bundle infoDictionary][@"CFBundleName"];
}

+ (NSString *)getVersionFromBundle:(NSBundle *)bundle {
    return [bundle infoDictionary][@"CFBundleShortVersionString"];
}
@end
