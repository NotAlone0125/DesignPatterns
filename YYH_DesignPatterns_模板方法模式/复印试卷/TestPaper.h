//
//  TestPaper.h
//  YYH_DesignPatterns_模板方法模式
//
//  Created by 杨昱航 on 2017/7/13.
//  Copyright © 2017年 杨昱航. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TestPaper : NSObject

-(void)testOne;
-(void)testTwo;
-(void)testThree;

@end

@interface TestPaperOne : TestPaper

@end

@interface TestPaperTwo : TestPaper

@end
