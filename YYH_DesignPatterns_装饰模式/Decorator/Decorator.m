//
//  Decorator.m
//  YYH_DesignPatterns_装饰模式
//
//  Created by 杨昱航 on 2017/7/10.
//  Copyright © 2017年 杨昱航. All rights reserved.
//

#import "Decorator.h"

@implementation Decorator

-(id)initWithPerson:(Person *)person;
{
    if (self=[super init])
    {
        self.component=person;
    }
    return self;
}

-(void)show
{
    if (self.component!=NULL)
    {
        [self.component show];
    }
}

@end


@implementation TShirts

-(void)show
{
    NSLog(@"大T恤");
    [super show];
}

@end


@implementation BigTrouser

-(void)show
{
    NSLog(@"垮裤");
    [super show];
}

@end

@implementation Sneakers

-(void)show
{
    NSLog(@"破球鞋");
    [super show];
}

@end


