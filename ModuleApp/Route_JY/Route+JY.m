//
//  Route+JY.m
//  ModuleApp
//
//  Created by enli on 2018/8/8.
//  Copyright © 2018年 enli. All rights reserved.
//

#import "Route+JY.h"

@implementation ELRouter(Action_JY)

-(void)Action_100:(NSDictionary *)params{
    NSInteger num = [[params objectForKey:@"action"] integerValue];
    NSLog(@"Action_100: %ld",num);
}

@end
