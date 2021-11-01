//
//  ViewController.m
//  CompanentTestDemo
//
//  Created by Marshal on 2021/10/14.
//

#import "ViewController.h"
#import <Component1/Component1.h>
#import <Component2/Component2.h>
#import <LSComponentDemo/LSTestModel.h>

#import <MGJRouter/MGJRouter.h>

#import "CTMediator+CTMediaComponent.h"

#import <BeeHive/BeeHive.h>
#import <BeeHiveProtocolComponent/BHProtocol.h>


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self testComponent];
    [self testCocoapods];
}

- (void)testComponent {
    [TestModel printInfo];
    [Component2 printInfo];
}

- (void)testCocoapods {
    [LSTestModel printTestInfo];
}


- (IBAction)testMGJRouter:(id)sender {
    [MGJRouter openURL:@"MGJComponent://pushViewController" withUserInfo:@{
        @"title": @"测试用的title",
        @"viewController": self,
        @"callback": ^(id result) {
            NSLog(@"callbackInfo:%@", result);
        }
    } completion:nil];
}

- (IBAction)testCTMedia:(id)sender {
    [[CTMediator sharedInstance] ctm_pushViewController2:@{
        @"title": @"CTMedia标题",
        @"viewController": self
    }];
}

- (IBAction)testBeeHive:(id)sender {
    static NSInteger idx = 0;
    
    if (idx % 3 == 0) {
        id<BHHomeDelegate> home = [[BeeHive shareInstance] createService:@protocol(BHHomeDelegate)];
        [home pushHomeViewController:@{
            @"viewController": self
        }];
    }else if (idx % 3 == 1) {
        id<BHPayDelegate> pay = [[BeeHive shareInstance] createService:@protocol(BHPayDelegate)];
        [pay jumpToPayController:@{
            @"viewController": self
        }];
    }else if (idx % 3 == 2) {
        id<BHMineDelegate> mine = [[BeeHive shareInstance] createService:@protocol(BHMineDelegate)];
        [mine pushMineViewController:@{
            @"viewController": self
        }];
    }
    
    idx++;
}


@end
