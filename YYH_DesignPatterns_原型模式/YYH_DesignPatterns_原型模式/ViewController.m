//
//  ViewController.m
//  YYH_DesignPatterns_原型模式
//
//  Created by 杨昱航 on 2017/7/12.
//  Copyright © 2017年 杨昱航. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //简单的简历代码实现(比较麻烦，需要多少份就需要实例化多少次)
    Resume * resumeA=[[Resume alloc]initWithName:@"YYH" sex:@"男" age:@"12" timeArea:@"2012-2016" company:@"XX公司"];
    [resumeA disPlay];
    
    Resume * resumeB=[[Resume alloc]initWithName:@"YYH" sex:@"男" age:@"12" timeArea:@"2012-2016" company:@"XX公司"];
    [resumeB disPlay];
    
    Resume * resumeC=[[Resume alloc]initWithName:@"YYH" sex:@"男" age:@"12" timeArea:@"2012-2016" company:@"XX公司"];
    [resumeC disPlay];
    
    //升级写法，引用，不使用NSCopy协议(一旦修改其中一个的属性，三个对象的属性都会变化)
    Resume * resume1=[[Resume alloc]initWithName:@"YYH" sex:@"男" age:@"12" timeArea:@"2012-2016" company:@"XX公司"];
    Resume * resume2=resume1;
    
    Resume * resume3=resume1;
    
    [resume1 disPlay];
    [resume2 disPlay];
    [resume3 disPlay];
    
    
    //原型模式：用原型实例指定创建对象的种类，并通过拷贝这些原型创建新的对象。其实就是从一个对象再创建另外一个可定制的对象，而且不需要知道任何创建的细节。
    Resume * resumeQ=[[Resume alloc]initWithName:@"YYH" sex:@"男" age:@"12" timeArea:@"2012-2016" company:@"XX公司"];
    
    Resume * resumeW=[resumeQ copy];
    [resumeW setName:@"YH"];
    
    Resume * resumeE=[resumeQ copy];
    [resumeE setAge:@"88"];
    
    [resumeQ disPlay];
    [resumeW disPlay];
    [resumeE disPlay];
    //使用NSCopying协议，可以任意修改某个对象的值。不用动态初始化新的对象，而是动态地获得对象运行时的状态。
    
    
    //如果字段是值类型的，则对该字段执行逐位复制，如果字段是引用类型，则复制引用但不复制引用的对象，因此，原始对象及其复本引用同一对象。（也就是说简历类中有对象的引用，那么引用的对象不会被复制过来）
    Resume_02 * resume4=[[Resume_02 alloc]initWithName:@"YYH" sex:@"男" age:@"12" timeArea:@"2012-2016" company:@"XX公司"];
    
    Resume_02 * resume5=[resume4 copy];
    [resumeW setCompany:@"zz公司"];
    
    Resume_02 * resume6=[resume4 copy];
    [resumeE setTimeArea:@"2009-2012"];
    
    [resume4 disPlay];
    [resume5 disPlay];
    [resume6 disPlay];
    
    
    //浅复制：被复制对象的所有变量都含有与原来的对象相同的值，而所有的对其他对象的引用都引用指向原来的对象。
    //深复制：把引用对象的变量指向复制过的新对象。而不是原来的被引用的对象。
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
