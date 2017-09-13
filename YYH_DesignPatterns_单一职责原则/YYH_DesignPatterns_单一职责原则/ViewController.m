//
//  ViewController.m
//  YYH_DesignPatterns_单一职责原则
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
    
    //单一职责原则（SRP）：就一个类而言，应该仅有一个引起它变化的原因。
    //如果一个类承担的职责过多，就等于把这些职责耦合在一起，一个职责的变化可能会削弱或者抑制这个类完成其他职责的能力。这种耦合会导致脆弱的设计，当变化发生时，设计会遭受到意想不到的破坏。
    //软件设计真正要做的许多内容，就是发现职责并吧这些职责相互分离，如果你能够想到多于一个的动机去改变一个类，那么这个类就有多于一个的职责。
    //思考：俄罗斯方块游戏的实现
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
