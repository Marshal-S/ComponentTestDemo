//
//  LSCTPushViewController.m
//  CTMediaComponentDemo
//
//  Created by Marshal on 2021/10/28.
//

#import "LSCTPushViewController.h"

@interface LSCTPushViewController ()

@end

@implementation LSCTPushViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor yellowColor];
    
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
