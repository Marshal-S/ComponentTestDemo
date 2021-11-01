//
//  LSCTPushViewController.h
//  CTMediaComponentDemo
//
//  Created by Marshal on 2021/10/28.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface LSCTPushViewController : UIViewController

@property (nonatomic, copy) void (^backBlock)(void);

@end

NS_ASSUME_NONNULL_END
