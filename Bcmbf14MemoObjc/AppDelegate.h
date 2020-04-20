//
//  AppDelegate.h
//  Bcmbf14MemoObjc
//
//  Created by jongchankim on 2020/04/21.
//  Copyright © 2020 jongchankim. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

