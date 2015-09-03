//
//  Person+MJ.m
//  06-block
//
//  Created by apple on 14-6-3.
//  Copyright (c) 2014年 itcast. All rights reserved.
//

#import "Person+MJ.h"
#import <objc/message.h>

@implementation Person (MJ)

static double HeightKey;

- (void)setHeight:(double)height
{
    objc_setAssociatedObject(self, &HeightKey, @(height), OBJC_ASSOCIATION_ASSIGN);
}

- (double)height
{
    return [objc_getAssociatedObject(self, &HeightKey) doubleValue];
}
@end
