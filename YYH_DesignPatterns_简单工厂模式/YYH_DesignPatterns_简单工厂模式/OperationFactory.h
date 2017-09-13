//
//  OperationFactory.h
//  YYH_DesignPatterns_简单工厂模式
//
//  Created by 杨昱航 on 2017/7/7.
//  Copyright © 2017年 杨昱航. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Operation.h"
@interface OperationFactory : NSObject

+(NSString *)resultWithOperation:(NSString *)operationSymbol A:(NSString *)A B:(NSString *)B;

@end
