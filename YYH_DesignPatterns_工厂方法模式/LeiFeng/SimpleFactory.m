//
//  SimpleFactory.m
//  YYH_DesignPatterns_工厂方法模式
//
//  Created by 杨昱航 on 2017/7/12.
//  Copyright © 2017年 杨昱航. All rights reserved.
//

#import "SimpleFactory.h"

@implementation SimpleFactory

+(LeiFeng *)createLeiFengWithType:(LeiFengType)type;
{
    LeiFeng * leifeng;
    switch (type) {
        case LeiFengTypeUndergradute:
            leifeng=[[Undergradute alloc]init];
            break;
            
        case LeiFengTypeVolunteer:
            leifeng=[[Volunteer alloc]init];
            break;
            
        default:
            break;
    }
    return leifeng;
}

@end
