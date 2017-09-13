//
//  LeiFeng.h
//  YYH_DesignPatterns_工厂方法模式
//
//  Created by 杨昱航 on 2017/7/12.
//  Copyright © 2017年 杨昱航. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger,LeiFengType) {
    LeiFengTypeUndergradute =0,
    LeiFengTypeVolunteer,
};

@interface LeiFeng : NSObject

-(void)sweep;

-(void)wash;

-(void)buyRice;

@end


@interface Undergradute : LeiFeng//学雷锋的大学生


@end


@interface Volunteer : LeiFeng//学雷锋的大学生


@end
