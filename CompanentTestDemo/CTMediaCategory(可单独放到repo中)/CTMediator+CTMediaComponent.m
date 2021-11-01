//
//  CTMediator+CTMediaComponent.m
//  CompanentTestDemo
//
//  Created by Marshal on 2021/10/28.
//

#import "CTMediator+CTMediaComponent.h"

//对应组件暴露出来的名字
static NSString * const kCTMTargetCTMComponentDemo = @"CTMedia";
//相应模块暴露出来的函数名
static NSString * const kCTMTargetCTMComponentPushViewController = @"pushViewController";

@implementation CTMediator (CTMediaComponent)

- (void)ctm_pushViewController:(NSDictionary *)parameters {
    [self performTarget:kCTMTargetCTMComponentDemo action:kCTMTargetCTMComponentPushViewController params:parameters shouldCacheTarget:NO];
}

- (void)ctm_pushViewController2:(NSDictionary *)parameters {
    [self performTarget:kCTMTargetCTMComponentDemo action:kCTMTargetCTMComponentPushViewController params:parameters shouldCacheTarget:YES];
}


@end
