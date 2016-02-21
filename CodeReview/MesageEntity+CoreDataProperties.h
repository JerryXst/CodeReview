//
//  MesageEntity+CoreDataProperties.h
//  CodeReview
//
//  Created by JerryXst on 16/2/21.
//  Copyright © 2016年 JerryXst. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

#import "MesageEntity.h"

NS_ASSUME_NONNULL_BEGIN

@interface MesageEntity (CoreDataProperties)

@property (nullable, nonatomic, retain) NSString *content;
@property (nullable, nonatomic, retain) NSString *id;
@property (nullable, nonatomic, retain) NSNumber *status;
@property (nullable, nonatomic, retain) NSManagedObject *comittor;
@property (nullable, nonatomic, retain) NSManagedObject *reciever;

@end

NS_ASSUME_NONNULL_END
