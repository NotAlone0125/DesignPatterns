//
//  ViewController.m
//  YYH_DesignPatterns_简单工厂模式
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
    
    //程序的必要标准特征：可维护，可扩展，可复用，灵活性好
    //通过封装继承和多态将程序的耦合度降低
    //实现计算器功能
    
    NSString * result=[OperationFactory resultWithOperation:@"+" A:@"20" B:@"0"];
    NSLog(@"result--%@",result);
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
