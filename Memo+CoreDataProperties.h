//
//  Memo+CoreDataProperties.h
//  Bcmbf14MemoObjc
//
//  Created by jongchankim on 2020/04/23.
//  Copyright © 2020 jongchankim. All rights reserved.
//
//

#import "Memo+CoreDataClass.h"


NS_ASSUME_NONNULL_BEGIN

@interface Memo (CoreDataProperties)

+ (NSFetchRequest<Memo *> *)fetchRequest;

@property (nullable, nonatomic, copy) NSString *content;
@property (nullable, nonatomic, copy) NSDate *insertDate;

@end

NS_ASSUME_NONNULL_END
