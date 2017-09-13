//
//  Fund.m
//  YYH_DesignPatterns_外观模式
//
//  Created by 杨昱航 on 2017/7/13.
//  Copyright © 2017年 杨昱航. All rights reserved.
//

#import "Fund.h"

@implementation Fund

-(id)init
{
    if (self=[super init])
    {
        stock=[[Stock alloc]init];
        nationalDebt=[[NationalDebt alloc]init];
        realty=[[Realty alloc]init];
    }
    return self;
}

-(void)buy
{
    [stock buy];
    [nationalDebt buy];
    [realty buy];
}
-(void)sell
{
    [stock sell];
    [nationalDebt sell];
    [realty sell];
}

@end
