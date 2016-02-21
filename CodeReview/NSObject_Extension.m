//
//  NSObject_Extension.m
//  CodeReview
//
//  Created by JerryXst on 16/2/21.
//  Copyright © 2016年 JerryXst. All rights reserved.
//


#import "NSObject_Extension.h"
#import "CodeReview.h"

@implementation NSObject (Xcode_Plugin_Template_Extension)

+ (void)pluginDidLoad:(NSBundle *)plugin
{
    static dispatch_once_t onceToken;
    NSString *currentApplicationName = [[NSBundle mainBundle] infoDictionary][@"CFBundleName"];
    if ([currentApplicationName isEqual:@"Xcode"]) {
        dispatch_once(&onceToken, ^{
            sharedPlugin = [[CodeReview alloc] initWithBundle:plugin];
        });
    }
}
@end
