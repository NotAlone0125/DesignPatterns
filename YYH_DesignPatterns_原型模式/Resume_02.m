//
//  Resume_02.m
//  YYH_DesignPatterns_原型模式
//
//  Created by 杨昱航 on 2017/7/13.
//  Copyright © 2017年 杨昱航. All rights reserved.
//

#import "Resume_02.h"

@implementation Resume_02

-(id)initWithName:(NSString *)name sex:(NSString *)sex age:(NSString *)age timeArea:(NSString *)timeArea company:(NSString *)company;
{
    if (self=[super init])
    {
        self.name=name;
        self.sex=sex;
        self.age=age;
        self.timeArea=timeArea;
        self.company=company;
        
        work=[[WorkExperience alloc]init];
        work.timeArea=self.timeArea;
        work.company=self.company;
    }
    return self;
}

-(void)disPlay
{
    NSLog(@"%@ %@ %@\n工作经历：%@ %@",self.name,self.age,self.sex,work.timeArea,work.company);
}
- (id)copyWithZone:(nullable NSZone *)zone; {
    
    Resume_02 * resume = [[[self class] allocWithZone:zone] init];
    resume.age = self.age;
    resume.name = self.name;
    resume.sex=self.sex;
    resume.timeArea=self.timeArea;
    resume.company=self.company;
    
    return resume;
}

@end
