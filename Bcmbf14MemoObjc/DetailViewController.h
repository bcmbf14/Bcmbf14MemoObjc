//
//  DetailViewController.h
//  Bcmbf14MemoObjc
//
//  Created by jongchankim on 2020/04/22.
//  Copyright © 2020 jongchankim. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Memo.h"
#import "Memo+CoreDataProperties.h"

NS_ASSUME_NONNULL_BEGIN

@interface DetailViewController : UIViewController

@property (strong, nonatomic) Memo* memo;

@end

NS_ASSUME_NONNULL_END
