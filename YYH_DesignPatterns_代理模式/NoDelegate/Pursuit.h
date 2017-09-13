//
//  Pursuit.h
//  YYH_DesignPatterns_代理模式
//
//  Created by 杨昱航 on 2017/7/10.
//  Copyright © 2017年 杨昱航. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SchoolGirl.h"

@interface Pursuit : NSObject//追求者类
{
    SchoolGirl * _mm;
}

-(id)initWithGirl:(SchoolGirl *)mm;

-(void)giveDolls;
-(void)giveFlowers;
-(void)giveChocolate;

@end
