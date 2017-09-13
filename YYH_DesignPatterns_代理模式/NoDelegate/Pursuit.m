//
//  Pursuit.m
//  YYH_DesignPatterns_代理模式
//
//  Created by 杨昱航 on 2017/7/10.
//  Copyright © 2017年 杨昱航. All rights reserved.
//

#import "Pursuit.h"

@implementation Pursuit
-(id)initWithGirl:(SchoolGirl *)mm
{
    if (self=[super init])
    {
        _mm=mm;
    }
    return self;
}
-(void)giveDolls;
{
    NSLog(@"送娃娃");
}
-(void)giveFlowers;
{
    NSLog(@"送花");
}
-(void)giveChocolate;
{
    NSLog(@"送巧克力");
}
@end
