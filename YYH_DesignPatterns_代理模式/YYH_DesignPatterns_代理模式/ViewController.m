//
//  ViewController.m
//  YYH_DesignPatterns_代理模式
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
    
    //无代理模式
    SchoolGirl * mm=[[SchoolGirl alloc]initWithName:@"MM"];
    
    Pursuit * pursuit=[[Pursuit alloc]initWithGirl:mm];
    
    [pursuit giveDolls];
    [pursuit giveFlowers];
    [pursuit giveChocolate];
    
    //代理模式，找人代理送礼物
    Proxy * delegate=[[Proxy alloc]initWithGirl:mm];
    
    [delegate giveChocolate];
    [delegate giveFlowers];
    [delegate giveDolls];
    //代理模式，为其他对象提供一种代理以控制对这个对象的访问。
    /*
     代理模式应用：
     1.远程代理，也就是为一个对象在不同的地址空间提供局部代表。这样可以隐藏一个对象存在于不同地址空间的事实。
     2.虚拟代理，是根据需要创建开销很大的对象。通过它来存放实例化需要很长时间的真实对象（浏览器加载很对图片，需要一个个下载，未打开的图片，通过虚拟代理替代了真实的图片，此时代理存储了图片的路径和尺寸）。
     3.安全代理，用来控制真实对象访问时的权限，一般用于对象应该有不同的访问权限的时候。
     4.智能指引，是指当调用真实的对象时，代理处理另外一些事。
     */
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
