//
//  CodeReview.m
//  CodeReview
//
//  Created by JerryXst on 16/2/21.
//  Copyright © 2016年 JerryXst. All rights reserved.
//

#import "CodeReview.h"
#import "SettingViewModel.h"
#import "SettingWindowController.h"

@interface CodeReview()

@property (nonatomic, strong, readwrite) NSBundle *bundle;
@property (nonatomic, strong) SettingViewModel *viewModel;
@end


@implementation CodeReview

+ (instancetype)sharedPlugin
{
    return sharedPlugin;
}

- (id)initWithBundle:(NSBundle *)plugin
{
    if (self = [super init]) {
        // reference to plugin's bundle, for resource access
        self.bundle = plugin;
        [[NSNotificationCenter defaultCenter] addObserver:self
                                                 selector:@selector(didApplicationFinishLaunchingNotification:)
                                                     name:NSApplicationDidFinishLaunchingNotification
                                                   object:nil];
    }
    return self;
}

- (SettingViewModel *)viewModel
{
    if (nil == _viewModel) {
        NSString *strNib = [self.bundle.resourcePath stringByAppendingPathComponent:@"SettingWindowController.nib"];
        SettingWindowController *winCtrl = [[SettingWindowController alloc] initWithWindowNibPath:strNib owner:self];
        _viewModel = [[SettingViewModel alloc] initWithView:winCtrl];
    }
    return _viewModel;
}

- (void)didApplicationFinishLaunchingNotification:(NSNotification*)noti
{
    //removeObserver
    [[NSNotificationCenter defaultCenter] removeObserver:self name:NSApplicationDidFinishLaunchingNotification object:nil];
    
    // Create menu items, initialize UI, etc.
    // Sample Menu Item:
    NSMenuItem *menuItem = [[NSApp mainMenu] itemWithTitle:@"Edit"];
    if (menuItem) {
        [[menuItem submenu] addItem:[NSMenuItem separatorItem]];
        NSMenuItem *actionMenuItem = [[NSMenuItem alloc] initWithTitle:@"Do Action" action:@selector(doMenuAction) keyEquivalent:@""];
        //[actionMenuItem setKeyEquivalentModifierMask:NSAlphaShiftKeyMask | NSControlKeyMask];
        [actionMenuItem setTarget:self];
        [[menuItem submenu] addItem:actionMenuItem];
    }
}

// Sample Action, for menu item:
- (void)doMenuAction
{
    [self.viewModel showWindow];
}

- (void)dealloc
{
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

@end
