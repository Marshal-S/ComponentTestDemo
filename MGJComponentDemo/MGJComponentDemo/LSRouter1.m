//
//  LSRouter1.m
//  LSComponentDemo_Example
//
//  Created by Marshal on 2021/10/28.
//  Copyright © 2021 Marshal-S. All rights reserved.
//

#import "LSRouter1.h"
#import <MGJRouter/MGJRouter.h>
#import "LSPushViewController.h"

@implementation LSRouter1

+ (void)load {
    [MGJRouter registerURLPattern:@"MGJComponent://pushViewController" toHandler:^(NSDictionary *routerParameters) {
        NSLog(@"%@", routerParameters);
        
        NSDictionary *userInfo = routerParameters[MGJRouterParameterUserInfo];
        UIViewController *vc = userInfo[@"viewController"];
        void (^block)(id) = userInfo[@"callback"];
        
        if (!vc) return;
        LSPushViewController *pv = [LSPushViewController new];
        [pv setBackBlock:^{
            if (block) block(@"我是传回的数据");
        }];
        [vc presentViewController:pv animated:YES completion:nil];
        
    }];
    
    [MGJRouter registerURLPattern:@"MGJComponent://testNil" toHandler:nil];
}

@end
