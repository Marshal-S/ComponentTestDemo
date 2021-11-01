//
//  BHMineDelegate.h
//  BeeHiveProtocolComponent
//
//  Created by Marshal on 2021/10/29.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol BHMineDelegate <NSObject>

- (void)pushMineViewController:(NSDictionary *)parameters;

@end

NS_ASSUME_NONNULL_END
