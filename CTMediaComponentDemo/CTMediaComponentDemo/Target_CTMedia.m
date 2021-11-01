//
//  Target_CTMedia.m
//  CTMediaComponentDemo
//
//  Created by Marshal on 2021/10/28.
//

#import "Target_CTMedia.h"
#import "LSCTPushViewController.h"

@implementation Target_CTMedia

- (id)Action_nativeGetPushViewController:(NSDictionary *)parameters {
    return [LSCTPushViewController new];
}

- (void)Action_pushViewController:(NSDictionary *)parameters {
    LSCTPushViewController *pv = [LSCTPushViewController new];
    
    NSString *title = parameters[@"title"];
    UIViewController *vc = parameters[@"viewController"];
    
    pv.title = title;
    [vc presentViewController:pv animated:YES completion:nil];
}

@end
