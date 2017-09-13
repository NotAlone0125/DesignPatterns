//
//  Pursuit_delegate.m
//  YYH_DesignPatterns_代理模式
//
//  Created by 杨昱航 on 2017/7/10.
//  Copyright © 2017年 杨昱航. All rights reserved.
//

#import "Pursuit_delegate.h"

@implementation Pursuit_delegate

-(id)initWithGirl:(SchoolGirl *)mm;
{
    if (self=[super init])
    {
        _mm=mm;
    }
    return self;
}

-(void)giveDolls
{
    NSLog(@"%@,送你娃娃",_mm.name);
}
-(void)giveFlowers
{
    NSLog(@"%@,送你鲜花",_mm.name);
}

-(void)giveChocolate
{
    NSLog(@"%@,送你巧克力",_mm.name);
}


@end
