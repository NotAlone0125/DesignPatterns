 //
//  ViewController.m
//  YYH_DesignPatterns_策略模式
//
//  Created by 杨昱航 on 2017/7/7.
//  Copyright © 2017年 杨昱航. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //面向对象的编程，并不是类越多越好，类的划分是为了封装，但分类的基础是抽象，具有相同属性和功能的对象的抽象集合才是类。
 
#pragma mark ******************简单工厂实现***********************
    
    //商场打折促销的简单工厂类实现
    double total=0.0;
    
    CashFactory * cFactory=[[CashFactory alloc]init];
    
    CashSuper * cSuper=[cFactory createAcceptCashWithType:CashAcceptModelRebate];
    
    total=[cSuper acceptCashWithMoney:500];
    
    NSLog(@"total--%f",total);
    //简单工厂模式虽然可以解决如上问题  但是商城的促销会经常更改，每次维护都需要改动工厂类，因此不是最好的处理办法
    
#pragma mark *******************策略模式和简单工厂模式结合**********************
    //策略模式Strategy：它定义了算法家族，分别封装起来，让他们之间可以互相替换，此模式让算法的变化，不会影响到使用算法的客户。
    CashContext * context=[[CashContext alloc]initWithType:CashAcceptModelRebate];
    
    total=[context getResultWithMoney:300];
    
    NSLog(@"total--%f",total);
    //简单工程模式需要让控制器认识两个类，CashFactory和CashSuper，而策略模式和简单工厂模式结合的用法，控制器只需要认识CashContext类，耦合更加降低。
    
    
    /*
     策略模式是一种定义一系列算法的方法，从概念上来看，所有这些算法完成的都是相同的工作，只是实现不同，它可以以相同的方法调用所有的算法，减少了各种算法类与使用算法类之间的耦合。
     优点：策略模式的Strategy类层次为Context定义了一系列的可供重用的算法或行为。继承有助于析取出这些算法中的公共功能；简化了单元测试，因为每个算法都有自己的类，可以通过自己的接口单独测试。
     */
    
    //eg:但是如果需求变化 仍然是需要改动的，只是改动多少的区别，还有更优化的方法就是反射技术，抽象工厂模式中会用到、
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
