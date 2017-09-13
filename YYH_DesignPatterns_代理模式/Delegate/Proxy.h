//
//  Proxy.h
//  YYH_DesignPatterns_代理模式
//
//  Created by 杨昱航 on 2017/7/10.
//  Copyright © 2017年 杨昱航. All rights reserved.
//

#import "GiveGift.h"
#import "Pursuit_delegate.h"

@interface Proxy : GiveGift//代理类，也去实现送礼物接口

{
    Pursuit_delegate * pursuit_delegate;
}

-(id)initWithGirl:(SchoolGirl *)mm;

@end
