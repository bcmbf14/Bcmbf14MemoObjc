//
//  DetailViewController.m
//  Bcmbf14MemoObjc
//
//  Created by jongchankim on 2020/04/22.
//  Copyright © 2020 jongchankim. All rights reserved.
//

#import "DetailViewController.h"
#import "ComposeViewController.h"

@interface DetailViewController ()
<UITableViewDataSource>

@property (strong, nonatomic) NSDateFormatter* formatter;

@property (weak, nonatomic) IBOutlet UITableView *memoTableView;

@end


@implementation DetailViewController

- (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 2;
}

- (nonnull UITableViewCell *)tableView:(nonnull UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
    if (indexPath.row == 0){
        UITableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:@"memoCell" forIndexPath:indexPath];
        
        cell.textLabel.text = self.memo.content;
        
        
        return cell;
    }
    
    if (indexPath.row == 1){
        UITableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:@"dateCell" forIndexPath:indexPath];
        
        cell.textLabel.text = [self.formatter stringFromDate:self.memo.insertDate];
        
        return cell;
    }
    
    return [UITableViewCell alloc];
}


- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    ComposeViewController* vc = [[segue.destinationViewController childViewControllers] objectAtIndex:0];
    vc.editTarget = self.memo;
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
    [self.memoTableView reloadData];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.formatter = [[NSDateFormatter alloc] init];
    self.formatter.dateStyle = NSDateFormatterLongStyle;
    self.formatter.timeStyle = NSDateFormatterMediumStyle;
    self.formatter.locale = [NSLocale localeWithLocaleIdentifier:@"Ko_kr"];
    
}

/*
 #pragma mark - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
 // Get the new view controller using [segue destinationViewController].
 // Pass the selected object to the new view controller.
 }
 */



@end
