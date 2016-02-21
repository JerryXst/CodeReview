//
//  CodeReview.h
//  CodeReview
//
//  Created by JerryXst on 16/2/21.
//  Copyright © 2016年 JerryXst. All rights reserved.
//

#import <AppKit/AppKit.h>

@class CodeReview;

static CodeReview *sharedPlugin;

@interface CodeReview : NSObject

+ (instancetype)sharedPlugin;
- (id)initWithBundle:(NSBundle *)plugin;

@property (nonatomic, strong, readonly) NSBundle* bundle;
@end