//
//  CashFactory.h
//  YYH_DesignPatterns_策略模式
//
//  Created by 杨昱航 on 2017/7/10.
//  Copyright © 2017年 杨昱航. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CashSuper.h"

@interface CashFactory : NSObject

-(CashSuper *)createAcceptCashWithType:(CashAcceptModel)type;

@end
