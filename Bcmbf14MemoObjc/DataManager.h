//
//  DataManager.h
//  Bcmbf14MemoObjc
//
//  Created by jongchankim on 2020/04/23.
//  Copyright © 2020 jongchankim. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

NS_ASSUME_NONNULL_BEGIN

@interface DataManager : NSObject

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;

+ (instancetype)sharedInstance;

@property (readonly, strong) NSManagedObjectContext* mainContext;
@property (strong, nonatomic) NSMutableArray* memoList;

- (void)fetchMemo;

@end

NS_ASSUME_NONNULL_END
