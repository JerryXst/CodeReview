//
//  SettingViewModel.m
//  CodeReview
//
//  Created by JerryXst on 16/2/21.
//  Copyright © 2016年 JerryXst. All rights reserved.
//

#import "SettingViewModel.h"

NSString * const kTriggerString = @"// review:";

@implementation SettingViewModel
- (instancetype)initWithView:(NSWindowController *)view
{
    if (self = [super init]) {
        _view = view;
    }
    return self;
}

- (void)dealloc
{
    _view = nil;
}

- (void)showWindow
{
    [self.view showWindow:nil];
}
@end
