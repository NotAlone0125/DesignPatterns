//
//  CashContext.h
//  YYH_DesignPatterns_策略模式
//
//  Created by 杨昱航 on 2017/7/10.
//  Copyright © 2017年 杨昱航. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CashFactory.h"

@interface CashContext : NSObject
{
    CashSuper * cs;
}

-(id)initWithType:(CashAcceptModel)type;

-(double)getResultWithMoney:(double)money;

@end
