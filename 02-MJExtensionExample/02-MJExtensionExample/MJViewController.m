//
//  MJViewController.m
//  02-MJExtensionExample
//
//  Created by apple on 14-6-3.
//  Copyright (c) 2014年 itcast. All rights reserved.
//

#import "MJViewController.h"
#import "MJUser.h"
#import "MJExtension.h"

@interface MJViewController ()

@end

@implementation MJViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    NSDictionary *dict = @{@"name" : @"jack", @"age" : @"10"};
    
    MJUser *user = [MJUser objectWithKeyValues:dict];
    
    NSLog(@"-----------");
}

@end
