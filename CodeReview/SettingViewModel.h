//
//  SettingViewModel.h
//  CodeReview
//
//  Created by JerryXst on 16/2/21.
//  Copyright © 2016年 JerryXst. All rights reserved.
//
#import <Cocoa/Cocoa.h>
#import <Foundation/Foundation.h>

extern NSString * const kTriggerString;

@interface SettingViewModel : NSObject
@property (nonatomic, readonly, strong) NSWindowController *view;

- (instancetype)initWithView:(NSWindowController *)view;
- (void)showWindow;
@end
