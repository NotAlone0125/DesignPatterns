//
//  SimpleFactory.h
//  YYH_DesignPatterns_工厂方法模式
//
//  Created by 杨昱航 on 2017/7/12.
//  Copyright © 2017年 杨昱航. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LeiFeng.h"
@interface SimpleFactory : NSObject

+(LeiFeng *)createLeiFengWithType:(LeiFengType)type;

@end
