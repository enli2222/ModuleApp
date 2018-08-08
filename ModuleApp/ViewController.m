//
//  ViewController.m
//  ModuleApp
//
//  Created by enli on 2018/8/8.
//  Copyright © 2018年 enli. All rights reserved.
//

#import "ViewController.h"
#import "ELRouter.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    [self setButton:@"44800" frame: CGRectMake(100, 100, 200, 30) action:@selector(onAction44800:)];
    [self setButton:@"44801" frame: CGRectMake(100, 150, 200, 30) action:@selector(onAction44801:)];
    [self setButton:@"行情60" frame: CGRectMake(100, 200, 200, 30) action:@selector(onActionHQ60:)];
    [self setButton:@"行情20109" frame: CGRectMake(100, 250, 200, 30) action:@selector(onActionHQ20109:)];
    [self setButton:@"交易" frame: CGRectMake(100, 300, 200, 30) action:@selector(onActionJY:)];
}

-(UIButton *)setButton:(NSString *)title frame:(CGRect)frame action:(SEL)action{
    UIButton  * button = [[UIButton  alloc] init];
    button.frame = frame;
    [button setTitle:title forState:UIControlStateNormal];
    [button setBackgroundColor:[UIColor blueColor]];
    [button  addTarget:self action:action forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    return button;
}

-(IBAction)onAction44800:(id)sender{
    [ELRouter OnMsg:44800 wParam:@"获取消息内容44800" lParam:nil];
}

-(IBAction)onAction44801:(id)sender{
    [ELRouter OnMsg:44801 wParam:@"打开新界面咯!" lParam:nil];
}

-(IBAction)onActionHQ60:(id)sender{
    [ELRouter OnMsg:60 wParam:nil lParam:nil];
}

-(IBAction)onActionHQ20109:(id)sender{
    [ELRouter OnMsg:20109 wParam:nil lParam:nil];
}

-(IBAction)onActionJY:(id)sender{
    [ELRouter OnMsg:100 wParam:nil lParam:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
