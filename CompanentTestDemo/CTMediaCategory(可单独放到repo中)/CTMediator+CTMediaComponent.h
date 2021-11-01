//
//  CTMediator+CTMediaComponent.h
//  CompanentTestDemo
//
//  Created by Marshal on 2021/10/28.
//

#import <CTMediator/CTMediator.h>

NS_ASSUME_NONNULL_BEGIN

@interface CTMediator (CTMediaComponent)

- (void)ctm_pushViewController:(NSDictionary *)parameters;

- (void)ctm_pushViewController2:(NSDictionary *)parameters;

@end

NS_ASSUME_NONNULL_END
