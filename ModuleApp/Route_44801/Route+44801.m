//
//  Route+44801.m
//  ModuleApp
//
//  Created by enli on 2018/8/8.
//  Copyright © 2018年 enli. All rights reserved.
//

#import "Route+44801.h"
#import "TestViewController.h"

@implementation ELRouter(Action_44801)

-(void)Action_44801:(NSString *)param{
    TestViewController *tvc = [[TestViewController alloc]init];
    UINavigationController *nav = (UINavigationController *)[UIApplication sharedApplication].keyWindow.rootViewController;
    [nav pushViewController:tvc animated:YES];
  
    
}

@end
