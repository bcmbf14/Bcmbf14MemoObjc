//
//  Memo+CoreDataProperties.m
//  Bcmbf14MemoObjc
//
//  Created by jongchankim on 2020/04/23.
//  Copyright © 2020 jongchankim. All rights reserved.
//
//

#import "Memo+CoreDataProperties.h"

@implementation Memo (CoreDataProperties)

+ (NSFetchRequest<Memo *> *)fetchRequest {
	return [NSFetchRequest fetchRequestWithEntityName:@"Memo"];
}

@dynamic content;
@dynamic insertDate;

@end
