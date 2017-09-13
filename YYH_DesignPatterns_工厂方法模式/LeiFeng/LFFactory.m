//
//  LFFactory.m
//  YYH_DesignPatterns_工厂方法模式
//
//  Created by 杨昱航 on 2017/7/12.
//  Copyright © 2017年 杨昱航. All rights reserved.
//

#import "LFFactory.h"

@implementation LFFactory

@end

@implementation UndergraduateLFFactory

-(LeiFeng *)createLFFactory
{
    return [[Undergradute alloc]init];
}

@end

@implementation VolunteerLFFactory

-(LeiFeng *)createLFFactory
{
    return [[Volunteer alloc]init];
}

@end
