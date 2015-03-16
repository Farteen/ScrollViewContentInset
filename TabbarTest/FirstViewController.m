//
//  FirstViewController.m
//  TabbarTest
//
//  Created by FarTeen on 3/16/15.
//  Copyright (c) 2015 FarTeen. All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController ()<UITableViewDelegate,UITableViewDataSource>

@property (nonatomic, strong)   UITableView *tableView;

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    [self.view addSubview:self.tableView];
    
    UIView *v_test = [[UIView alloc] initWithFrame:CGRectMake(0, self.view.bounds.size.height - 49 - 50, self.view.bounds.size.width, 50.)];
    v_test.backgroundColor = [[UIColor redColor] colorWithAlphaComponent:.5];
    [self.view addSubview:v_test];
    
    self.view.backgroundColor = [UIColor whiteColor];
    self.tableView.rowHeight = 50.;
    self.tableView.contentInset = UIEdgeInsetsMake(100, 0, 50, 0);
    self.tableView.scrollIndicatorInsets = UIEdgeInsetsMake(100, 0, 50, 0);
    
    UIView *v_fake_header = [[UIView alloc] initWithFrame:CGRectMake(0, -100, self.view.bounds.size.width, 100)];
    v_fake_header.backgroundColor = [UIColor blueColor];
    [self.tableView addSubview:v_fake_header];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView
 numberOfRowsInSection:(NSInteger)section
{
    return 20;
}

- (UITableViewCell *)tableView:(UITableView *)tableView
         cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"CELLID"];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"CELLID"];
    }
    cell.textLabel.text = [NSString stringWithFormat:@"%d",indexPath.row];
    return cell;
}

@end
