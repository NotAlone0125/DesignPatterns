//
//  ViewController.m
//  YYH_DesignPatterns_依赖倒转原则
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
    
    /*
     依赖倒转原则：抽象不应该依赖细节，细节应该依赖于抽象，说白了就是要针对接口编程，不要对实现编程。
     高层模块不应该依赖低层模块，两个都应该依赖于抽象。
     */
    
    /*
     里氏代换原则：一个软件实体如果使用的是一个父类的话，那么一定适用于其子类，而且它察觉不出父类对象和子类对象的区别。也就是说，在软件里面，把父类都替换成它的子类，程序的行为没有变化。简单的说，子类型必须能够替换掉它们的父类型。
     只有当子类可以替换掉父类的，软件单位的功能不受影响时，父类才能真正被服用，而子类也能够在父类的基础上增加新的行为。
     由于子类型的可替换性才使得使用父类类型的模块在无需修改的情况下就可以扩展。
     */
    
    //依赖倒转其实可以说是面向对象设计的标志，用哪种语言来编写程序不重要，如果编写时考虑的都是如何针对抽象编程而不是针对细节编程，即程序中所有的依赖关系都是终止于抽象类或者接口，那就是面向对象的设计，反之那就是过程化的设计了。
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
