//
//  CashContext.m
//  YYH_DesignPatterns_策略模式
//
//  Created by 杨昱航 on 2017/7/10.
//  Copyright © 2017年 杨昱航. All rights reserved.
//

#import "CashContext.h"

@implementation CashContext

-(id)initWithType:(CashAcceptModel)type;
{
    if (self=[super init])
    {
        switch (type) {
            case CashAcceptModelNormal:
            {
                cs=[[CashNormal alloc]init];
            }
                break;
            case CashAcceptModelRebate:
            {
                cs=[[CashRebate alloc]initWithMoneyRebate:0.8];
            }
                break;
            case CashAcceptModelReturn:
            {
                cs=[[CashReturn alloc]initWithMoneyCondition:300 moneyReturn:100];
            }
                break;
                
            default:
                break;
        }
    }
    return self;
}

-(double)getResultWithMoney:(double)money;
{
    return [cs acceptCashWithMoney:money];//根据收费策略不同 获得计算结果
}

@end
