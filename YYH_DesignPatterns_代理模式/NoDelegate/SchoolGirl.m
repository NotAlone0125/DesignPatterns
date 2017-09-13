//
//  SchoolGirl.m
//  YYH_DesignPatterns_代理模式
//
//  Created by 杨昱航 on 2017/7/10.
//  Copyright © 2017年 杨昱航. All rights reserved.
//

#import "SchoolGirl.h"

@implementation SchoolGirl
-(id)initWithName:(NSString *)name
{
    if (self=[super init])
    {
        _name=name;
    }
    return self;
}
@end
