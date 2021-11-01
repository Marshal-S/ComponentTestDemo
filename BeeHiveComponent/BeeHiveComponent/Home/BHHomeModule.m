//
//  BHHomeModule.m
//  BeeHiveComponent
//
//  Created by Marshal on 2021/10/29.
//

#import "BHHomeModule.h"
#import <BeeHiveProtocolComponent/BHHomeDelegate.h>
#import <BeeHive/BeeHive.h>
#import "BHHomeViewController.h"

@BeeHiveService(BHHomeDelegate, BHHomeModule)

@interface BHHomeModule ()<BHHomeDelegate>


@end

@implementation BHHomeModule

- (void)pushHomeViewController:(NSDictionary *)parameters {
//    NSLog(@"哈哈哈哈 :BHHomeViewController");
//    return;
    UIViewController *vc = parameters[@"viewController"];
    BHHomeViewController *home = [BHHomeViewController new];
    [vc presentViewController:home animated:YES completion:nil];
}

@end
