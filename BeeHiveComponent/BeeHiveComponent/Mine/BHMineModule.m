//
//  BHMineModule.m
//  BeeHiveComponent
//
//  Created by Marshal on 2021/10/29.
//

#import "BHMineModule.h"
#import <BeeHiveProtocolComponent/BHMineDelegate.h>
#import <BeeHive/BeeHive.h>
#import "BHMineViewController.h"

//@BeeHiveService(BHMineDelegate, BHMineModule)

@interface BHMineModule ()<BHMineDelegate>

@end

@implementation BHMineModule

+ (void)load {
    [[BeeHive shareInstance] registerService:@protocol(BHMineDelegate) service:[self class]];
}

- (void)pushMineViewController:(NSDictionary *)parameters {
//    NSLog(@"哈哈哈哈 :BHMineViewController");
//    return;
    UIViewController *vc = parameters[@"viewController"];
    BHMineViewController *home = [BHMineViewController new];
    [vc presentViewController:home animated:YES completion:nil];
}

@end
