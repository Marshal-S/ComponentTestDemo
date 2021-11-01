//
//  LSPushViewController.m
//  LSComponentDemo_Example
//
//  Created by Marshal on 2021/10/27.
//  Copyright © 2021 Marshal-S. All rights reserved.
//

#import "LSPushViewController.h"

@interface LSPushViewController ()

@end

@implementation LSPushViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor grayColor];
    
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(back)];
    [self.view addGestureRecognizer:tap];
}


- (void)back {
    [self dismissViewControllerAnimated:YES completion:nil];
    if (self.backBlock) self.backBlock();
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
