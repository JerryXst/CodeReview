//
//  CodeReviewDataModel.h
//  CodeReview
//
//  Created by JerryXst on 16/2/21.
//  Copyright © 2016年 JerryXst. All rights reserved.
//

#import <CoreData/CoreData.h>

@interface CodeReviewDataModel : NSObject
+ (instancetype)shareInstance;
- (NSManagedObjectContext *)mainMOC;
@end
