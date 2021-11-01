//
//  LSPushViewController.h
//  LSComponentDemo_Example
//
//  Created by Marshal on 2021/10/27.
//  Copyright © 2021 Marshal-S. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface LSPushViewController : UIViewController

@property (nonatomic, copy) void (^backBlock)(void);

@end

NS_ASSUME_NONNULL_END
