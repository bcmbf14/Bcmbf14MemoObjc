//
//  Memo.h
//  Bcmbf14MemoObjc
//
//  Created by jongchankim on 2020/04/21.
//  Copyright © 2020 jongchankim. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Memo : NSObject

@property (strong, nonatomic) NSString* content;
@property (strong, nonatomic) NSDate* insertDate;

- (instancetype)initWithContent:(NSString*)content;

+ (NSArray*)dummyMemoList;

@end

NS_ASSUME_NONNULL_END
