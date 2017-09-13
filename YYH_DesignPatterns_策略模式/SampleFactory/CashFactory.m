//
//  CashFactory.m
//  YYH_DesignPatterns_策略模式
//
//  Created by 杨昱航 on 2017/7/10.
//  Copyright © 2017年 杨昱航. All rights reserved.
//

#import "CashFactory.h"

@implementation CashFactory

-(CashSuper *)createAcceptCashWithType:(CashAcceptModel)type;
{
    CashSuper * cs;
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
    return cs;
}

@end
