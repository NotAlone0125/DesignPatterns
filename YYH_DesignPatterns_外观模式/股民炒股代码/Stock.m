//
//  Stock.m
//  YYH_DesignPatterns_外观模式
//
//  Created by 杨昱航 on 2017/7/13.
//  Copyright © 2017年 杨昱航. All rights reserved.
//

#import "Stock.h"

@implementation Stock

-(void)sell
{
    NSLog(@"卖股票");
}

-(void)buy
{
    NSLog(@"买股票");
}

@end

@implementation NationalDebt

-(void)sell
{
    NSLog(@"卖国债");
}

-(void)buy
{
    NSLog(@"买国债");
}

@end

@implementation Realty

-(void)sell
{
    NSLog(@"卖地产");
}

-(void)buy
{
    NSLog(@"买地产");
}

@end




