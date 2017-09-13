//
//  CashSuper.h
//  YYH_DesignPatterns_策略模式
//
//  Created by 杨昱航 on 2017/7/10.
//  Copyright © 2017年 杨昱航. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, CashAcceptModel) {
    CashAcceptModelNormal = 0,
    CashAcceptModelRebate,
    CashAcceptModelReturn,
};

@interface CashSuper : NSObject

-(double)acceptCashWithMoney:(double)money;

@end

@interface CashNormal : CashSuper//正常收费子类

@end

@interface CashRebate : CashSuper//打折收费子类
{
    double _rebate;
}

-(id)initWithMoneyRebate:(double)moneyRebate;

@end

@interface CashReturn : CashSuper//返利收费子类
{
    double _condition;//能够达到返利要求的值
    double _return;//返利值
}

-(id)initWithMoneyCondition:(double)moneyCondition moneyReturn:(double)moneyReturn;

@end

