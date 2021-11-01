//
//  BHPayViewController.m
//  BeeHiveComponent
//
//  Created by Marshal on 2021/10/29.
//

#import "BHPayViewController.h"

@interface BHPayViewController ()

@end

@implementation BHPayViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"pay";
    self.view.backgroundColor = [UIColor greenColor];

    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(back)];
    [self.view addGestureRecognizer:tap];
}


- (void)back {
    [self dismissViewControllerAnimated:YES completion:nil];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
