//
//  Memo.m
//  Bcmbf14MemoObjc
//
//  Created by jongchankim on 2020/04/21.
//  Copyright © 2020 jongchankim. All rights reserved.
//

#import "Memo.h"

@implementation Memo

- (instancetype)initWithContent:(NSString*)content {
    self = [super init];
    if ( self != nil) {
        _content = content;
        _insertDate = [NSDate date];
    }
    return self;
}

+ (NSArray*)dummyMemoList {
    Memo* memo1 = [[Memo alloc] initWithContent:@"Lorem Ipsum 111"];
    Memo* memo2 = [[Memo alloc] initWithContent:@"Lorem Ipsum 222"];
    
    return [NSArray arrayWithObjects:memo1, memo2, nil];
}



@end
