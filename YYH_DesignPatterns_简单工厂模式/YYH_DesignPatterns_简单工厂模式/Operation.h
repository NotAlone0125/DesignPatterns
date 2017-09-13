//
//  Operation.h
//  YYH_DesignPatterns_简单工厂模式
//
//  Created by 杨昱航 on 2017/7/7.
//  Copyright © 2017年 杨昱航. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Operation : NSObject

@property(nonatomic,copy)NSString * strNumber1;
@property(nonatomic,copy)NSString * strNumber2;

-(id)initWithA:(NSString *)strNumber1 B:(NSString *)strNumber2;

-(NSString *)resultWithOperation;

@end

//加
@interface OperationAdd : Operation

@end

//减
@interface OperationSub : Operation

@end

//乘
@interface OperationMul : Operation

@end

//除
@interface OperationDiv: Operation

@end
