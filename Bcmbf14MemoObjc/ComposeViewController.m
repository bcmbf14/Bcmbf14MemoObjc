//
//  ComposeViewController.m
//  Bcmbf14MemoObjc
//
//  Created by jongchankim on 2020/04/22.
//  Copyright © 2020 jongchankim. All rights reserved.
//

#import "ComposeViewController.h"

@interface ComposeViewController ()


- (IBAction)close:(id)sender;










@end

@implementation ComposeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)close:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}


@end
