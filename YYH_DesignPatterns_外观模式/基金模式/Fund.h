//
//  Fund.h
//  YYH_DesignPatterns_外观模式
//
//  Created by 杨昱航 on 2017/7/13.
//  Copyright © 2017年 杨昱航. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Stock.h"
@interface Fund : NSObject
{
    Stock * stock;
    NationalDebt * nationalDebt;
    Realty * realty;
}
-(id)init;

-(void)buy;

-(void)sell;

@end
