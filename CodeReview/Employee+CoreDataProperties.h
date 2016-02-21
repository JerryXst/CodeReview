//
//  Employee+CoreDataProperties.h
//  CodeReview
//
//  Created by JerryXst on 16/2/21.
//  Copyright © 2016年 JerryXst. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

#import "Employee.h"

NS_ASSUME_NONNULL_BEGIN

@interface Employee (CoreDataProperties)

@property (nullable, nonatomic, retain) NSString *email;
@property (nullable, nonatomic, retain) NSString *id;
@property (nullable, nonatomic, retain) NSString *name;
@property (nullable, nonatomic, retain) NSString *stuffNO;
@property (nullable, nonatomic, retain) NSOrderedSet<MesageEntity *> *comittedMessages;
@property (nullable, nonatomic, retain) NSOrderedSet<MesageEntity *> *recievedMessages;

@end

@interface Employee (CoreDataGeneratedAccessors)

- (void)insertObject:(MesageEntity *)value inComittedMessagesAtIndex:(NSUInteger)idx;
- (void)removeObjectFromComittedMessagesAtIndex:(NSUInteger)idx;
- (void)insertComittedMessages:(NSArray<MesageEntity *> *)value atIndexes:(NSIndexSet *)indexes;
- (void)removeComittedMessagesAtIndexes:(NSIndexSet *)indexes;
- (void)replaceObjectInComittedMessagesAtIndex:(NSUInteger)idx withObject:(MesageEntity *)value;
- (void)replaceComittedMessagesAtIndexes:(NSIndexSet *)indexes withComittedMessages:(NSArray<MesageEntity *> *)values;
- (void)addComittedMessagesObject:(MesageEntity *)value;
- (void)removeComittedMessagesObject:(MesageEntity *)value;
- (void)addComittedMessages:(NSOrderedSet<MesageEntity *> *)values;
- (void)removeComittedMessages:(NSOrderedSet<MesageEntity *> *)values;

- (void)insertObject:(MesageEntity *)value inRecievedMessagesAtIndex:(NSUInteger)idx;
- (void)removeObjectFromRecievedMessagesAtIndex:(NSUInteger)idx;
- (void)insertRecievedMessages:(NSArray<MesageEntity *> *)value atIndexes:(NSIndexSet *)indexes;
- (void)removeRecievedMessagesAtIndexes:(NSIndexSet *)indexes;
- (void)replaceObjectInRecievedMessagesAtIndex:(NSUInteger)idx withObject:(MesageEntity *)value;
- (void)replaceRecievedMessagesAtIndexes:(NSIndexSet *)indexes withRecievedMessages:(NSArray<MesageEntity *> *)values;
- (void)addRecievedMessagesObject:(MesageEntity *)value;
- (void)removeRecievedMessagesObject:(MesageEntity *)value;
- (void)addRecievedMessages:(NSOrderedSet<MesageEntity *> *)values;
- (void)removeRecievedMessages:(NSOrderedSet<MesageEntity *> *)values;

@end

NS_ASSUME_NONNULL_END
