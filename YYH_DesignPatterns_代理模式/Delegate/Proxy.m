//
//  Proxy.m
//  YYH_DesignPatterns_代理模式
//
//  Created by 杨昱航 on 2017/7/10.
//  Copyright © 2017年 杨昱航. All rights reserved.
//

#import "Proxy.h"

@implementation Proxy
-(id)initWithGirl:(SchoolGirl *)mm
{
    if (self=[super init])
    {
        pursuit_delegate=[[Pursuit_delegate alloc]initWithGirl:mm];
    }
    return self;
}

-(void)giveDolls
{
    [pursuit_delegate giveDolls];
}
-(void)giveFlowers
{
    [pursuit_delegate giveFlowers];
}
-(void)giveChocolate
{
    [pursuit_delegate giveChocolate];
}

@end
