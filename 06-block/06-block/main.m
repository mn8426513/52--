//
//  main.m
//  06-block
//
//  Created by apple on 14-6-3.
//  Copyright (c) 2014年 itcast. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Person+MJ.h"
#import <objc/message.h>
#import <objc/runtime.h>

// 运行时机制: 比较高级的特性, 纯C语言
// 平时写的OC代码 -->  C语言的运行时代码

int main(int argc, const char * argv[])
{
    @autoreleasepool {
        // block究竟放在什么地方:堆\栈
        
        // 默认情况下, 任何block都是在栈, 随时可能会被回收
//        void (^myblock)() = ^{
//            
//        };
        
        // 对block做一次copy操作,block的内存就会放到堆里面
//        [myblock copy];
//        Block_copy(myblock);
        Person *p = [[Person alloc] init];
        
//        __weak Person *p2 = p;
//        __unsafe_unretained Person *p2 = p;
//        p.block = ^{
//            p2.age = 20;
//        };
        
//        unsigned int count = 0;
//        
//        // 获得Person类中的所有成员变量
//        Ivar *ivars = class_copyIvarList([Person class], &count);
//        
//        // 遍历所有的成员变量
//        for (int i = 0; i < count; i++) {
//            Ivar ivar = ivars[i];
//            
//            const char *name = ivar_getName(ivar);
//            const char *type = ivar_getTypeEncoding(ivar);
//            
//            NSLog(@"%s %s", name, type);
//        }
        
//        Person *p = [[Person alloc] init];
//        
//        
//        p.height = 20.8;
//        
//        NSLog(@"%f", p.height);
        
//        p.age = 10;
    }
    return 0;
}

