//
//  ViewController.m
//  YYH_DesignPatterns_模板方法模式
//
//  Created by 杨昱航 on 2017/7/13.
//  Copyright © 2017年 杨昱航. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //抄题目的程序
    TestPaperA * studentA=[[TestPaperA alloc]init];
    NSLog(@"学生甲抄的题目");
    [studentA testOne];
    [studentA testTwo];
    [studentA testThree];
    
    TestPaperB * studentB=[[TestPaperB alloc]init];
    NSLog(@"学生乙抄的题目");
    [studentB testOne];
    [studentB testTwo];
    [studentB testThree];
    //两份试卷非常类似，除了答案，其余都一样，容易写错，又难以维护
    
    //因此可以使用复印试卷的方式  提供一个试卷父类
    //模板方法模式，定义一个操作中的算法的骨架，而将一些步骤延迟到子类中。模板方法使得子类可以不改变一个算法的结构即可冲定义该算法的某些特定步骤。模板方法模式是通过把不变行为搬移到超类，去除子类中的重复代码来体现它的优势。
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
