//
//  ViewController.m
//  YYH_DesignPatterns_开放封闭原则
//
//  Created by 杨昱航 on 2017/7/10.
//  Copyright © 2017年 杨昱航. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //开放-封闭原则（想想一国两制）：是说软件实体（类、模块、函数等等）应该可以扩展，但是不可修改。
    //两个特征：对于扩展是开放的，对于更改是封闭的。
    //怎样的设计才能面对需求的改变却可以保持相对稳定，从而使得系统可以在第一个版本以后不断推出新的版本呢？
    //无论模块是多么的封闭，都会存在一些无法对之封闭的变化。既然不可能完全封闭，设计人员必须对于他设计的模块应该对哪种变化封闭做出选择。他必须先猜测出最有可能发生的变化种类，然后构造抽象来隔离那些变化
    //面对需求，对程序的改动是通过增加新代码进行的，而不是更改现有的代码。
    //我们希望的是在开发工作开始之后不久就知道能发生的变化。查明可能发生的变化所等待的时间越长，要创建正确的抽象就越困难。
    //开放-封闭原则是面向对象设计的核心所在。遵循这个原则可以带来面向对象技术所声称的巨大好处，也就是可维护、可扩展、可复用、灵活性好。开放人员应该仅对程序中出现频繁变化的那些部分作出抽象，然而，对于应用程序中的每个部分都可以地进行抽象同样不是一个好主意。拒绝不成熟的抽象和抽象本身一样重要。
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
