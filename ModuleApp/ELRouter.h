//
//  ELRouter.h
//  ModuleApp
//
//  Created by enli on 2018/8/8.
//  Copyright © 2018年 enli. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ELRouter : NSObject

+(void) OnMsg:(NSInteger)nMsgType wParam:(NSObject *)wParam lParam:(NSObject *)lParam;

@end
