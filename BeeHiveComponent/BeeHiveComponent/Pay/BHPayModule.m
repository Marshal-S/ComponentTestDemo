//
//  BHPayModule.m
//  BeeHiveComponent
//
//  Created by Marshal on 2021/10/29.
//

#import "BHPayModule.h"
#import <BeeHiveProtocolComponent/BHPayDelegate.h>
#import <BeeHive/BeeHive.h>
#import "BHPayViewController.h"

//@BeeHiveService(BHPayDelegate, BHPayModule)

@interface BHPayModule ()<BHPayDelegate>

@end

@implementation BHPayModule

- (void)jumpToPayController:(NSDictionary *)parameters {
//    NSLog(@"哈哈哈哈 :BHPayViewController");
//    return;
    UIViewController *vc = parameters[@"viewController"];
    BHPayViewController *home = [BHPayViewController new];
    [vc presentViewController:home animated:YES completion:nil];
}

@end
