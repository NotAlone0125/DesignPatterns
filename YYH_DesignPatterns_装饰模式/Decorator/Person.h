//
//  Person.h
//  YYH_DesignPatterns_装饰模式
//
//  Created by 杨昱航 on 2017/7/10.
//  Copyright © 2017年 杨昱航. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject//ConcreteComponent
{
    NSString * _name;
}

-(id)initWithName:(NSString *)name;

-(void)show;

@end
