//
//  Pursuit_delegate.h
//  YYH_DesignPatterns_代理模式
//
//  Created by 杨昱航 on 2017/7/10.
//  Copyright © 2017年 杨昱航. All rights reserved.
//

#import "GiveGift.h"
#import "SchoolGirl.h"
@interface Pursuit_delegate : GiveGift//追求者
{
    SchoolGirl * _mm;
}

-(id)initWithGirl:(SchoolGirl *)mm;

@end
