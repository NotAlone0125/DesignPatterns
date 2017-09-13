//
//  ViewController.m
//  YYH_DesignPatterns_工厂方法模式
//
//  Created by 杨昱航 on 2017/7/11.
//  Copyright © 2017年 杨昱航. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //简单工厂模式的优势在于工厂类中包含了必要的逻辑判断，根据客户端的选择条件动态实例化相关的类，对于客户端来说，去除了与具体产品的依赖。(容易违背开放-封闭原则)
    //工厂方法模式：定义一个用于创建对象的接口，让子类决定实例化哪一个类。工厂方法使一个类的实例化延迟到其子类。
    //工厂方法模式实现时，客户端需要决定实例化哪一个工厂来实现运算类，选择判断的问题还是存在的，也就是说，工厂方法吧简单工厂的内部逻辑判断移到了客户端代码来进行。你想要加功能，本来是改工厂类的，而现在是修改客户端
    
    //大学生学雷锋
    LeiFeng * xueleifeng=[[Undergradute alloc]init];
    
    [xueleifeng buyRice];
    [xueleifeng sweep];
    [xueleifeng wash];
    
    //三个人代替
    LeiFeng * student1=[[Undergradute alloc]init];
    [student1 buyRice];
    
    LeiFeng * student2=[[Undergradute alloc]init];
    [student2 sweep];
    
    LeiFeng * student3=[[Undergradute alloc]init];
    [student3 wash];
    
    //使用简单工厂模式更换学雷锋的为志愿者
    LeiFeng * studentA=[SimpleFactory createLeiFengWithType:LeiFengTypeVolunteer];
    [studentA buyRice];
    
    LeiFeng * studentB=[SimpleFactory createLeiFengWithType:LeiFengTypeVolunteer];
    [studentB sweep];
    
    LeiFeng * studentC=[SimpleFactory createLeiFengWithType:LeiFengTypeVolunteer];
    [studentC wash];
    
    //简单工厂模式代码重复过多，创建雷锋工厂
    LFFactory * factory=[[VolunteerLFFactory alloc]init];//换成大学生，只改这里即可
    LeiFeng * student=[factory createLFFactory];
    
    [student buyRice];
    [student sweep];
    [student wash];
    
    //工厂方法克服了简单工厂违背开放-封闭原则的缺点，又保持了封装对象创建过程的优点。
    //它们都集中封装了对象的创建，使得要更换对象时，不需要做大的改动就可实现，降低了客户程序与产品对象的耦合。工厂方法模式就是简单工厂模式的进一步抽象和推广，由于使用了多态，工厂方法模式保持了简单工厂模式的优点，而且克服了它的缺点。但缺点是由于每加一个产品，就需要增加一个产品工厂的类，增加了额外的开放量。（还是需要利用反射解决分支判断的问题）
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
