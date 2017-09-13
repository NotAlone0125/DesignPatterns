//
//  TestPaper.m
//  YYH_DesignPatterns_模板方法模式
//
//  Created by 杨昱航 on 2017/7/13.
//  Copyright © 2017年 杨昱航. All rights reserved.
//

#import "TestPaper.h"

@implementation TestPaper//既然使用了继承，并且肯定这个继承有意义，就应该要成为子类的模板，所有重复的代码都应该上升到父类去，而不是让每个子类都去重复。当我们要完成在某一细节层次一致的一个过程或一系列步骤，但其个别步骤在更详细的层次上的实现可能不同时，我们通常考虑用模板方法模式来处理。
-(void)testOne;
{
    NSLog(@"试题一");
}
-(void)testTwo;
{
    NSLog(@"试题二");
}
-(void)testThree;
{
    NSLog(@"试题三");
}
@end


@implementation TestPaperOne

-(void)testOne
{
    [super testOne];
    NSLog(@"答案A");
}

-(void)testTwo
{
    [super testTwo];
    NSLog(@"答案B");
}

-(void)testThree
{
    [super testThree];
    NSLog(@"答案C");
}

@end


@implementation TestPaperTwo

-(void)testOne
{
    [super testOne];
    NSLog(@"答案C");
}

-(void)testTwo
{
    [super testTwo];
    NSLog(@"答案B");
}

-(void)testThree
{
    [super testThree];
    NSLog(@"答案A");
}

@end


