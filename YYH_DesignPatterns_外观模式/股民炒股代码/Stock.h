//
//  Stock.h
//  YYH_DesignPatterns_外观模式
//
//  Created by 杨昱航 on 2017/7/13.
//  Copyright © 2017年 杨昱航. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Stock : NSObject

-(void)sell;
-(void)buy;

@end

@interface NationalDebt : Stock

@end

@interface Realty : Stock;

@end
