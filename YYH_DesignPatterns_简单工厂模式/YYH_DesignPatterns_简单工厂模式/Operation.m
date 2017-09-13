//
//  Operation.m
//  YYH_DesignPatterns_简单工厂模式
//
//  Created by 杨昱航 on 2017/7/7.
//  Copyright © 2017年 杨昱航. All rights reserved.
//

#import "Operation.h"

@implementation Operation

-(id)initWithA:(NSString *)strNumber1 B:(NSString *)strNumber2;
{
    if (self=[super init])
    {
        self.strNumber1=strNumber1;
        self.strNumber2=strNumber2;
    }
    return self;
}

-(NSString *)resultWithOperation
{
    return 0;
}

@end

@implementation OperationAdd

-(NSString *)resultWithOperation
{
    return [NSString stringWithFormat:@"%ld",[self.strNumber1 integerValue]+[self.strNumber2 integerValue]];
}

@end

@implementation OperationSub

-(NSString *)resultWithOperation
{
    return [NSString stringWithFormat:@"%ld",[self.strNumber1 integerValue]-[self.strNumber2 integerValue]];
}

@end

@implementation OperationMul

-(NSString *)resultWithOperation
{
    return [NSString stringWithFormat:@"%ld",[self.strNumber1 integerValue]*[self.strNumber2 integerValue]];
}

@end

@implementation OperationDiv

-(NSString *)resultWithOperation
{
    if (self.strNumber2==0)
    {
        NSLog(@"除数不能为0");
        return 0;
    }
    else
    {
        return [NSString stringWithFormat:@"%ld",[self.strNumber1 integerValue]/[self.strNumber2 integerValue]];
    }
}

@end
