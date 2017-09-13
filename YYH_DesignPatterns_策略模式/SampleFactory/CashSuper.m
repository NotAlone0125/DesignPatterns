//
//  CashSuper.m
//  YYH_DesignPatterns_策略模式
//
//  Created by 杨昱航 on 2017/7/10.
//  Copyright © 2017年 杨昱航. All rights reserved.
//

#import "CashSuper.h"

@implementation CashSuper

-(double)acceptCashWithMoney:(double)money;
{
    return money;
}

@end

@implementation CashNormal

-(double)acceptCashWithMoney:(double)money;
{
    return money;
}

@end

@implementation CashRebate

-(id)initWithMoneyRebate:(double)moneyRebate
{
    if (self=[super init])
    {
        _rebate=moneyRebate;
    }
    return self;
}

-(double)acceptCashWithMoney:(double)money
{
    return money*_rebate;
}

@end


@implementation CashReturn

-(id)initWithMoneyCondition:(double)moneyCondition moneyReturn:(double)moneyReturn
{
    if (self=[super init])
    {
        _condition=moneyCondition;
        _return=moneyReturn;
    }
    return self;
}

-(double)acceptCashWithMoney:(double)money
{
    if(money>_condition)
    {
        money=money-(money/_condition)*-_return;
    }
    return money;
}

@end



























