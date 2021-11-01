//
//  BHPayDelegate.h
//  BeeHiveProtocolComponent
//
//  Created by Marshal on 2021/10/29.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol BHPayDelegate <NSObject>

- (void)jumpToPayController:(NSDictionary *)parameters;

@end

NS_ASSUME_NONNULL_END
