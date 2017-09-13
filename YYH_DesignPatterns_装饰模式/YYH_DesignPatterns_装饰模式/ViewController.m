//
//  ViewController.m
//  YYH_DesignPatterns_装饰模式
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
    
    //装饰模式（Decorator）：动态地给一个对象添加一些额外的职责，就增加对象功能来说，装饰模式比生成子类更为灵活。
    //每个装饰对象的实现就和如何使用这个对象分离开了，每个装饰对象只关心自己的功能，不需要关心如何被添加到关系链当中。
    
    Person * yh=[[Person alloc]initWithName:@"杨昱航"];
    
    Sneakers * sneaker=[[Sneakers alloc]initWithPerson:yh];
    BigTrouser * bigTrouse=[[BigTrouser alloc]initWithPerson:sneaker];
    TShirts * tshirt=[[TShirts alloc]initWithPerson:bigTrouse];
    [tshirt show];
    
    //装饰模式是为已有功能动态地添加更多功能的一种方式。
    //什么时候使用：起初的设计中，当系统需要新功能的时候，是向旧的类中添加新的代码。这些新加的代码通常装饰了原有类的核心职责或主要行为，但这种做法的问题在于，在主类中加入了新的字段、新的方法、新的逻辑，从而增加了主类的复杂度，而这些新加入的东西仅仅是为了满足一些特定条件下才执行的特殊行为的需要。而装饰模式却提供了一个非常好的解决方案，它把每个要装饰的功能放在单独的类中，并让这个类包装它要装饰的对象，因此，当需要执行特殊行为时，客户代码就可以在运行时根据需要有选择地、按顺序地使用装饰功能包装对象了。
    //装饰模式的优点：把类中的装饰功能从类中搬移去除，这样可以简化原有类，有效地吧类的核心职责和装饰功能区分开了，而且可以去除相关类中重复的装饰逻辑。
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
