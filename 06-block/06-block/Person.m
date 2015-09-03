//
//  Person.m
//  06-block
//
//  Created by apple on 14-6-3.
//  Copyright (c) 2014年 itcast. All rights reserved.
//

#import "Person.h"

@implementation Person

- (id)init
{
    if (self = [super init]) {
        self.block = ^{
//            NSLog(@"----%d", _age);
        };
    }
    return self;
}

- (void)dealloc
{
    NSLog(@"dealloc");
}
@end
