//
//  TestView.m
//  LSComponentDemo
//
//  Created by Marshal on 2021/10/15.
//

#import "TestView.h"

@implementation TestView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    self.backgroundColor = [UIColor redColor];
    if (self) {
        UIImageView *iv = [[UIImageView alloc] initWithFrame:self.bounds];
        
        NSBundle *bundle = [NSBundle bundleWithPath:[[NSBundle bundleForClass:[self class]] pathForResource:@"LSComponentDemo" ofType:@"bundle"]];
        //直接从该framework组件中，以缓存方式加载图片
        UIImage *image = [UIImage imageNamed:@"icon_star" inBundle:bundle withConfiguration:nil];
        //直接从该framework组件中，非缓存方式加载图片
        UIImage *image2 = [UIImage imageWithContentsOfFile:[bundle pathForResource:@"icon_star1" ofType:@"png"]];
        
        //调用创建的.bundle内部图片资源
        NSBundle *assetBundle = [NSBundle bundleWithPath:[bundle pathForResource:@"ComponentDemo" ofType:@"bundle"]];
        //从组件创建的.bundle中调用图片
        UIImage *image3 = [UIImage imageNamed:@"icon_star2" inBundle:assetBundle withConfiguration:nil];
        
        iv.image = image;
        [self addSubview:iv];
    }
    return self;
}

@end
