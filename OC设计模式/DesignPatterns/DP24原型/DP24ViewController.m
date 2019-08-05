//
//  DP24ViewController.m
//  DesignPatterns
//
//  Created by 小李 on 2019/7/13.
//  Copyright © 2019 小李. All rights reserved.
//

#import "DP24ViewController.h"
#import "Verter.h"
#import "Dot.h"
#import "Mark.h"


@interface DP24ViewController ()

@end


@implementation DP24ViewController

/**
 重点观察 深拷贝和浅拷贝的效果
 
 使用 拷贝 和 克隆 的这种方式，就是原型模式的主要场景，比构造函数 创建的对象更高效
 
 NSCopying 实现这个协议里的- (id)copyWithZone:(NSZone *)zone;
 */
- (void)viewDidLoad {
    [super viewDidLoad];
    Verter *v1 = [[Verter alloc] initWithLocation:CGPointMake(10, 10)];
    Verter *v2 = [v1 copy];
    Verter *v3 = [v1 copy];
    Verter *v4 = [v1 copy];
    v4.location = CGPointMake(50, 50);
    NSLog(@"v1:%p\nv2:%p\nv3:%p\nv4:%p",v1,v2,v3,v4);
    NSLog(@"v3 loc:%@\nv4 loc:%@",NSStringFromCGPoint(v3.location),NSStringFromCGPoint(v4.location));

    Dot *dot1 = [[Dot alloc] initWithLocation:CGPointMake(100, 100)];
    [dot1 addMark:v1];
    [dot1 addMark:v2];
    [dot1 addMark:v3];
    [dot1 addMark:v4];
    
    Dot *dot2 = [dot1 copy];
    NSLog(@"dot1 count:%zd  %@\ndot2:%zd  %@",dot1.count, dot1, dot2.count, dot2);
    [dot1 removeMark:v1];
    NSLog(@"dot1 count:%zd  %@\ndot2:%zd  %@",dot1.count, dot1, dot2.count, dot2);
}

@end
