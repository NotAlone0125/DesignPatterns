//
//  TestPaper_model.h
//  YYH_DesignPatterns_模板方法模式
//
//  Created by 杨昱航 on 2017/7/13.
//  Copyright © 2017年 杨昱航. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TestPaper_model : NSObject

-(void)testOne;
-(void)testTwo;
-(void)testThree;
-(NSString *)answer1;
-(NSString *)answer2;
-(NSString *)answer3;
@end

@interface TestPaper_model_one : TestPaper_model

@end

@interface TestPaper_model_two : TestPaper_model

@end
