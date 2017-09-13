//
//  ViewController.m
//  YYH_DesignPatterns_外观模式
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
    
    //股民炒股，多人对多只股票，耦合度过高；基金将多只股票集合，多人购买一只基金，实际上等于买了多只股票，但是耦合度降低了。
    Stock * stock=[[Stock alloc]init];
    [stock buy];
    [stock sell];
    
    NationalDebt * nationalDebt=[[NationalDebt alloc]init];
    [nationalDebt buy];
    [nationalDebt sell];
    
    Realty * realty=[[Realty alloc]init];
    [realty buy];
    [realty sell];
    
    
    //基金代码
    Fund * fund=[[Fund alloc]init];
    [fund buy];
    [fund sell];
    
    //外观模式（Facade）：为子系统中的一组接口提供一个一致的界面，此模式定义了一个高层接口，这个接口使得这一子系统更加容易使用。
    //何时使用外观模式：首先，在设计初期阶段，应该要有意识的将不同的两个层分离，层与层之间建立外观；其次，在开发阶段，子系统往往因为不断的重构演化而变得越来越复杂，增加外观可以提供一个简单的接口，减少它们之间的依赖；第三，在维护一个遗留的大型系统时，可能这个系统已经非常难以维护和扩展了，可以为新系统开发一个外观类，来提供设计粗糙或高度复杂的遗留代码的比较清晰简单的接口，让新系统与外观对象交互，外观对象与遗留代码交互所有复杂的工作。
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end














