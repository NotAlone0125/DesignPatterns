//
//  Person.m
//  YYH_DesignPatterns_装饰模式
//
//  Created by 杨昱航 on 2017/7/10.
//  Copyright © 2017年 杨昱航. All rights reserved.
//

#import "Person.h"

@implementation Person

-(id)initWithName:(NSString *)name;
{
    if(self=[super init])
    {
        _name=name;
    }
    return self;
}

-(void)show
{
    NSLog(@"装扮的%@",_name);
}

@end
