//
//  TabBarViewController.m
//  TabbarTest
//
//  Created by FarTeen on 3/16/15.
//  Copyright (c) 2015 FarTeen. All rights reserved.
//

#import "TabBarViewController.h"
#import "FirstViewController.h"
#import "SecondViewController.h"

@interface TabBarViewController ()

@property   (nonatomic, strong) UINavigationController     *vc1;
@property (nonatomic, strong)   UINavigationController     *vc2;
@property (nonatomic, strong)   UINavigationController     *vc3;
@property (nonatomic, strong)   UINavigationController     *vc4;


@end

@implementation TabBarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _vc1 = [self generateFirstVC:@"1"];
    _vc2 = [self generateFirstVC:@"2"];
    _vc3 = [self generateFirstVC:@"3"];
    _vc4 = [self generateFirstVC:@"4"];
    
    self.viewControllers = @[_vc1,_vc2,_vc3];
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(5 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        self.viewControllers = @[_vc1,_vc2,_vc4];
    });
    
    
    // Do any additional setup after loading the view.
}

- (UINavigationController *)generateFirstVC:(NSString *)title
{
    FirstViewController *first = [[FirstViewController alloc] init];
    first.title = title;
    UINavigationController *navi = [[UINavigationController alloc] initWithRootViewController:first];
    return navi;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
