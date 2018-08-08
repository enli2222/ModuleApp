//
//  ELRouter.m
//  ModuleApp
//
//  Created by enli on 2018/8/8.
//  Copyright © 2018年 enli. All rights reserved.
//

#import "ELRouter.h"
#import <objc/runtime.h>
#import <CoreGraphics/CGBase.h>

@implementation ELRouter

+ (instancetype)shareRouter
{
    static ELRouter * router;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        router = [[ELRouter alloc] init];
    });
    return router;
}

+(void) OnMsg:(NSInteger)nMsgType wParam:(NSObject *)wParam lParam:(NSObject *)lParam{
    NSString * actionString = [NSString  stringWithFormat:@"Action_%ld:",nMsgType];
    SEL action =  NSSelectorFromString(actionString);
    NSMutableDictionary *params = [[NSMutableDictionary alloc] init];
    params[@"lParam"] = lParam;
    params[@"wParam"] = wParam;
    [[ELRouter shareRouter] safePerformAction:action params:params];
}

- (id)safePerformAction:(SEL)action params:(NSDictionary *)params
{
    NSMethodSignature* methodSig = [self methodSignatureForSelector:action];
    if(methodSig == nil) {
        return nil;
    }
    const char* retType = [methodSig methodReturnType];
    
    if (strcmp(retType, @encode(void)) == 0) {
        NSInvocation *invocation = [NSInvocation invocationWithMethodSignature:methodSig];
        [invocation setArgument:&params atIndex:2];
        [invocation setSelector:action];
        [invocation setTarget:self];
        [invocation invoke];
        return nil;
    }
    
    if (strcmp(retType, @encode(NSInteger)) == 0) {
        NSInvocation *invocation = [NSInvocation invocationWithMethodSignature:methodSig];
        [invocation setArgument:&params atIndex:2];
        [invocation setSelector:action];
        [invocation setTarget:self];
        [invocation invoke];
        NSInteger result = 0;
        [invocation getReturnValue:&result];
        return @(result);
    }
    
    if (strcmp(retType, @encode(BOOL)) == 0) {
        NSInvocation *invocation = [NSInvocation invocationWithMethodSignature:methodSig];
        [invocation setArgument:&params atIndex:2];
        [invocation setSelector:action];
        [invocation setTarget:self];
        [invocation invoke];
        BOOL result = 0;
        [invocation getReturnValue:&result];
        return @(result);
    }
    
    if (strcmp(retType, @encode(CGFloat)) == 0) {
        NSInvocation *invocation = [NSInvocation invocationWithMethodSignature:methodSig];
        [invocation setArgument:&params atIndex:2];
        [invocation setSelector:action];
        [invocation setTarget:self];
        [invocation invoke];
        CGFloat result = 0;
        [invocation getReturnValue:&result];
        return @(result);
    }
    
    if (strcmp(retType, @encode(NSUInteger)) == 0) {
        NSInvocation *invocation = [NSInvocation invocationWithMethodSignature:methodSig];
        [invocation setArgument:&params atIndex:2];
        [invocation setSelector:action];
        [invocation setTarget:self];
        [invocation invoke];
        NSUInteger result = 0;
        [invocation getReturnValue:&result];
        return @(result);
    }
    
    //清除告警
#pragma clang diagnostic ignored "-Warc-performSelector-leaks"
    return [self performSelector:action withObject:params];
    
}

@end
