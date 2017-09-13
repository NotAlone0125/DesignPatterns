//
//  Resume_02.h
//  YYH_DesignPatterns_原型模式
//
//  Created by 杨昱航 on 2017/7/13.
//  Copyright © 2017年 杨昱航. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "WorkExperience.h"
@interface Resume_02 : NSObject<NSCopying>
{
    WorkExperience * work;
}
@property(nonatomic,copy)NSString * name;
@property(nonatomic,copy)NSString * sex;
@property(nonatomic,copy)NSString * age;
@property(nonatomic,copy)NSString * timeArea;
@property(nonatomic,copy)NSString * company;

-(id)initWithName:(NSString *)name sex:(NSString *)sex age:(NSString *)age timeArea:(NSString *)timeArea company:(NSString *)company;
-(void)disPlay;

@end
