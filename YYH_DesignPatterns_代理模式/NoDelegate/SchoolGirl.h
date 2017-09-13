//
//  SchoolGirl.h
//  YYH_DesignPatterns_代理模式
//
//  Created by 杨昱航 on 2017/7/10.
//  Copyright © 2017年 杨昱航. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SchoolGirl : NSObject//被追求者类
@property(nonatomic,copy)NSString * name;
-(id)initWithName:(NSString *)name;

@end
