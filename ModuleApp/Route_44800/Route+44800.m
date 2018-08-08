//
//  Route+44800.m
//  ModuleApp
//
//  Created by enli on 2018/8/8.
//  Copyright © 2018年 enli. All rights reserved.
//

#import "Route+44800.h"
#import <UIKit/UIKit.h>

@implementation ELRouter(Action_44800)

-(void)Action_44800:(NSDictionary *)params{
    UINavigationController *nav = (UINavigationController *)[UIApplication sharedApplication].keyWindow.rootViewController;
     // 1.创建UIAlertController
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"提醒" message:[params objectForKey:@"wParam"]  preferredStyle:UIAlertControllerStyleAlert];
    // 2.创建并添加按钮
    UIAlertAction *okAction = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        NSLog(@"Action_44800 OK Action");
    }];
    UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:@"Cancel" style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
        NSLog(@"Action_44800 Cancel Action");
    }];
    
    [alertController addAction:okAction];
    [alertController addAction:cancelAction];

    [nav presentViewController:alertController animated:YES completion:nil];
    
}

@end
