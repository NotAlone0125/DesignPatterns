//
//  Decorator.h
//  YYH_DesignPatterns_装饰模式
//
//  Created by 杨昱航 on 2017/7/10.
//  Copyright © 2017年 杨昱航. All rights reserved.
//

#import "Person.h"

@interface Decorator : Person//服饰类

@property(nonatomic,strong)Person * component;

//打扮
-(id)initWithPerson:(Person *)person;

@end

//具体服饰类
@interface TShirts : Decorator

@end

@interface BigTrouser : Decorator

@end

@interface Sneakers : Decorator

@end
