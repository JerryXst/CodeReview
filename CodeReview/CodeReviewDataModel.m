//
//  CodeReviewDataModel.m
//  CodeReview
//
//  Created by JerryXst on 16/2/21.
//  Copyright © 2016年 JerryXst. All rights reserved.
//

#import "CodeReviewDataModel.h"
#import "CodeReview.h"

static CodeReviewDataModel *stc_data_model = nil;

@interface CodeReviewDataModel ()
{
 @private
    NSManagedObjectContext  *_mainMOC;
}
@end

@implementation CodeReviewDataModel

+ (instancetype)shareInstance
{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        stc_data_model = [[CodeReviewDataModel alloc] init];
    });
    return stc_data_model;
}

- (NSManagedObjectModel *)model
{
    NSURL *url = [CodeReview sharedPlugin].bundle.resourceURL;
    url = [url URLByAppendingPathComponent:@"CodeReviewCoreDataModel.xcdatamodeld"];
    NSManagedObjectModel *model = [[NSManagedObjectModel alloc] initWithContentsOfURL:url];
    return model;
}

- (NSPersistentStoreCoordinator *)persistentStoreCoordinator
{
    NSPersistentStoreCoordinator * persistantStoreCoordinator = [[NSPersistentStoreCoordinator alloc] initWithManagedObjectModel:self.model];
    // handle db upgrade
    NSDictionary *options = [NSDictionary dictionaryWithObjectsAndKeys:
                             @(YES), NSMigratePersistentStoresAutomaticallyOption,
                             @(YES), NSInferMappingModelAutomaticallyOption,
//                             NSSQLitePragmasOption, @{@"journal_mode":@"DELETE"},
                             nil];
    
    NSError *error = nil;
    NSURL *url = [CodeReview sharedPlugin].bundle.resourceURL;
    if (![persistantStoreCoordinator addPersistentStoreWithType:NSXMLStoreType
                                                  configuration:nil
                                                            URL:url
                                                        options:options
                                                          error:&error]) {
        NSLog(@"can not load data base. Terminate eSpace now...");
        abort();
    }
    return persistantStoreCoordinator;
}

- (NSManagedObjectContext *)mainMOC
{
    if (nil == _mainMOC) {
        _mainMOC = [[NSManagedObjectContext alloc] initWithConcurrencyType:NSMainQueueConcurrencyType];
        _mainMOC.persistentStoreCoordinator = self.persistentStoreCoordinator;
    }
    return _mainMOC;
}
@end
