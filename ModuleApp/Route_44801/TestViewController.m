//
//  TestViewController.m
//  ModuleApp
//
//  Created by enli on 2018/8/8.
//  Copyright © 2018年 enli. All rights reserved.
//

#import "TestViewController.h"
#import "ELRouter.h"
@interface TestViewController ()

@end

@implementation TestViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor yellowColor];
    UILabel *lb = [[UILabel alloc] init];
    lb.text = @"test";
    lb.frame = CGRectMake(100, 100, 100, 30);
    lb.font = [UIFont fontWithName:@"Arial" size:14];
    [self.view addSubview:lb];
    
    UIButton  * button = [[UIButton  alloc] init];
    button.frame = CGRectMake(100, 150, 100, 30);;
    [button setTitle:@"调用44800" forState:UIControlStateNormal];
    [button setBackgroundColor:[UIColor blueColor]];
    [button  addTarget:self action:@selector(onAction44800:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
}

-(IBAction)onAction44800:(id)sender{
    [ELRouter OnMsg:44800 wParam:@"44801调用4800" lParam:nil];
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
