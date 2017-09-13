//
//  TestPaper_model.m
//  YYH_DesignPatterns_模板方法模式
//
//  Created by 杨昱航 on 2017/7/13.
//  Copyright © 2017年 杨昱航. All rights reserved.
//

#import "TestPaper_model.h"

@implementation TestPaper_model
-(void)testOne;
{
    NSLog(@"试题一，答案%@",[self answer1]);
}
-(void)testTwo;
{
    NSLog(@"试题二，答案%@",[self answer2]);
}
-(void)testThree;
{
    NSLog(@"试题三，答案%@",[self answer3]);
}

@end


@implementation TestPaper_model_one

-(NSString *)answer1
{
    return @"A";
}

-(NSString *)answer2
{
    return @"B";
}

-(NSString *)answer3
{
    return @"C";
}

@end


@implementation TestPaper_model_two

-(NSString *)answer1
{
    return @"C";
}

-(NSString *)answer2
{
    return @"B";
}

-(NSString *)answer3
{
    return @"A";
}

@end
