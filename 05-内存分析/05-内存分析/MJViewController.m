//
//  MJViewController.m
//  05-内存分析
//
//  Created by apple on 14-6-3.
//  Copyright (c) 2014年 itcast. All rights reserved.
//

#import "MJViewController.h"
#import "MJPerson.h"

@interface MJViewController ()

@end

@implementation MJViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
//    MJPerson *p = [[MJPerson alloc] init];
//    
//    NSDictionary *dict = [[NSDictionary alloc] init];
    for (int i = 0; i<1000; i++) {
        NSDictionary *dict = [[NSDictionary alloc] initWithObjectsAndKeys:@"jack", @"name", nil];
        
        NSLog(@"----%@", dict);
        
//        [dict release];
    }
    
//    
    int a = 0;
    
    int b = 10 / a;
    
    NSLog(@"%d", b);
    
//    NSDictionary *dict2 = [[NSDictionary alloc] init];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
