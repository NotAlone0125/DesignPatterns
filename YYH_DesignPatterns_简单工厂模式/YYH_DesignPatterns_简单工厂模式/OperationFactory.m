//
//  OperationFactory.m
//  YYH_DesignPatterns_简单工厂模式
//
//  Created by 杨昱航 on 2017/7/7.
//  Copyright © 2017年 杨昱航. All rights reserved.
//

#import "OperationFactory.h"

@implementation OperationFactory


+(NSString *)resultWithOperation:(NSString *)operationSymbol A:(NSString *)A B:(NSString *)B;
{
    Operation * operation;

    if ([operationSymbol isEqualToString:@"+"])
    {
        operation=[[OperationAdd alloc]initWithA:A B:B];
    }
    if ([operationSymbol isEqualToString:@"-"])
    {
        operation=[[OperationSub alloc]initWithA:A B:B];
    }
    if ([operationSymbol isEqualToString:@"*"])
    {
        operation=[[OperationMul alloc]initWithA:A B:B];
    }
    if ([operationSymbol isEqualToString:@"/"])
    {
        operation=[[OperationDiv alloc]initWithA:A B:B];
    }
    return [operation resultWithOperation];
}

@end
