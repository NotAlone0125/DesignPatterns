//
//  ViewController.m
//  YYH_DesignPatterns_迪米特法则
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
    
    //迪米特法则也叫最少知识原则：如果两个类不必彼此直接通信，那么这两个类就不应当发生直接的相互作用。如果其中一个类需要调用另一个类的某一个方法的话，可以通过第三者转发这个调用。
    //迪米特法则首先强调的前提是在类的结构设计上，每一个类都应当尽量降低成员的访问权限。最根本的思想是强调了类之间的松耦合，类之间的耦合越弱，越有利于复用，一个处在弱耦合的类被修改，不会对有关系的类造成波及。
    
    //场景：部门和部门之间的沟通，而不是两个部门之间某个人的沟通，通过部门主管去管理部门的人员调配。
}



@end


























